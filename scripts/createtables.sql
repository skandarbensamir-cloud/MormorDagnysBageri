CREATE TABLE Suppliers(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    CompanyName VARCHAR(20),
    Contactperson VARCHAR(25),
    AddressLine VARCHAR(34),
    PhoneNumber VARCHAR(24),
    Email VARCHAR(125) UNIQUE
);