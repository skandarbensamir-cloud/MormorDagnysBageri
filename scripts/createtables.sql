CREATE TABLE Suppliers(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    CompanyName VARCHAR(20) NOT NULL,
    Contactperson VARCHAR(25) NOT NULL,
    AddressLine VARCHAR(34) NOT NULL,
    PhoneNumber VARCHAR(24),
    Email VARCHAR(125) NOT NULL UNIQUE
);
CREATE TABLE RawMaterials(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    ArticleNumber VARCHAR(100) NOT NULL UNIQUE,
    Name VARCHAR(20) NOT NULL,
    PricePerKg FLOAT NOT NULL,
    SupplierId INTEGER NOT NULL,
    Foreign Key (SupplierId) REFERENCES Suppliers (Id)
);
CREATE TABLE Purchases(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    RawMaterialId INTEGER NOT NULL,
    AmountKg FLOAT NOT NULL,
    PurchaseDate VARCHAR(10) NOT NULL,
    Foreign Key (RawMaterialID) REFERENCES RawMaterials (Id)
);
CREATE TABLE Products(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductName VARCHAR(20) NOT NULL UNIQUE,
    Price FLOAT NOT NULL
    );
CREATE TABLE Recipes(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductId INTEGER NOT NULL UNIQUE,
    Instruction TEXT NOT NULL,
    Foreign Key (ProductId) REFERENCES Products (Id)
);
CREATE TABLE RecipeRawMaterials(
   AmountKg FLOAT NOT NULL,
   RawMaterialId INTEGER NOT NULL,
   RecipeId INTEGER NOT NULL,
   Foreign Key (RecipeId) REFERENCES Recipes (Id),
   Foreign Key (RawMaterialId) REFERENCES RawMaterials (Id),
   PRIMARY KEY (RawMaterialId, RecipeId)
);