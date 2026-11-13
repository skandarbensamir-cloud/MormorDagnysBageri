SELECT * FROM Suppliers;
SELECT CompanyName, PhoneNumber FROM Suppliers;
SELECT ContactPerson, addressLine FROM Suppliers WHERE Id = 3;
--Visar alla råvaror och deras leverantörer!!!
SELECT RawMaterials.Name, Suppliers.CompanyName
FROM RawMaterials
JOIN Suppliers ON RawMaterials.SupplierId = Suppliers.Id;
--Visar alla produkter och deras recept!!!
SELECT Products.ProductName, Recipes.Instruction
FROM Products
JOIN Recipes ON Recipes.ProductId = Products.Id;
--Visar råvaror och mängd för kanellbullen!!!
SELECT RawMaterials.Name, RecipeRawMaterials.AmountKg
FROM RecipeRawMaterials
JOIN RawMaterials ON RecipeRawMaterials.RawMaterialId = RawMaterials.Id
WHERE RecipeRawMaterials.RecipeId = 1;

--Vårt VG:Test FK ska stoppa felaktig data
PRAGMA foreign_keys = ON;
-- Försök lägga in en råvara med leverantör 999, som inte finns
INSERT INTO RawMaterials(ArticleNumber, Name, PricePerKg, SupplierId)
VALUES('TEST-1', 'Choklad', 10, 999);
-- Förväntat resultat: FOREIGN KEY constraint failed, eftersom leverantör 999 inte finns

-- Om PRAGMA inte körs först släpps Choklad in, eftersom SQLite har FK-kontrollen avstängd som standard

-- Städning: tar bort testraden om den kommit in utan PRAGMA
DELETE FROM RawMaterials WHERE ArticleNumber = 'TEST-1';
