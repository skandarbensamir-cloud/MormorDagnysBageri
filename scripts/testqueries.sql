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
