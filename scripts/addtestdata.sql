INSERT INTO Suppliers(
    CompanyName,
    Contactperson,
    AddressLine,
    PhoneNumber,
    Email

)VALUES(
  'MjolBoende AB',
  'Elias Ahmed',
  'Storgatan 5',
  '070-4567875',
  'Info@Mjolboende.com'
),(
  'Graddhyllan AB',
  'Niklas Niklasson',
  'Bogatan 17',
  '070-76854948',
  'More@Graddhyllan.se'
),(
    'Kryddbodet i Goteborg',
    'Wade Willson',
    'Varvaderstorget',
    '031-540098',
    'Contactwadewillson@kryddbodet.com'
);
INSERT INTO Products(
    ProductName,
    Price
)VALUES(
    'Kanellbulle',
    25
),(
    'Chokladboll',
    45
),(
    'Prinsesstorta',
    495
);
INSERT INTO RawMaterials(
    ArticleNumber,
    Name,
    PricePerKg,
    SupplierId
)VALUES(
    'Ghk-cu',
    'Vetemjöl',
    12,
    1
),(
    'Mk-677',
    'Smör',
    10,
    2
),(
    'Yfr56',
    'Kanel',
    19,
    3
),(
    'Ha-ha',
    'Gradde',
    100,
    2
),(
    'Ncd-29',
    'socker',
    20,
    3
);
INSERT INTO Purchases(
    RawMaterialId,
    AmountKg,
    PurchaseDate
)VALUES(
    1,
    25,
    '2026-11-12'
),(
    2,
    40,
    '2026-09-17'
),(
    1,
    25,
    '2026-10-25'
),(
    3,
    100,
    '2026-11-01'
),(
    2,
    40,
    '2026-10-29'

);
INSERT INTO Recipes(
    ProductId,
    Instruction
)VALUES(
    1,
    'Knåda, rulla med kanelsmör, grädda 225 grader 8 min'
),(
    2,
    'Blanda smör, socker, havre och kakao, rulla till bollar'
),(
    3,
    'Varva sockerbotten med kräm och grädde, täck med marsipan'
);
INSERT INTO RecipeRawMaterials(
    AmountKg,
    RawMaterialId,
    RecipeId
)VALUES(
    0.5,
    1,
    1
),(
    1.5,
    2,
    1
),(
    2.5,
    3,
    2
),(
    0.7,
    5,
    2
),(
    3.5,
    4,
    3
),(
    5.5,
    4,
    1
);