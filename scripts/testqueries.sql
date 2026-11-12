SELECT * FROM Suppliers;
SELECT CompanyName, PhoneNumber FROM Suppliers;
SELECT ContactPerson, addressLine FROM Suppliers WHERE Id = 3;
--Visar alla råvaror och deras leverantörer
SELECT RawMaterials.Name, Suppliers.CompanyName
FROM RawMaterials
JOIN Suppliers ON RawMaterials.SupplierId = Suppliers.Id;