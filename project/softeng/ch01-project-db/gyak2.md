``` mermaid
erDiagram

Customer {
    INT CustomerSk PK
    NVARCHAR(20) Salutation
    NVARCHAR(50) FirstName
    NVARCHAR(50) LastName
    NVARCHAR(100) CompanyName
    VARCHAR(20) EUTaxNumber
    VARCHAR(20) PhoneNumber
    VARCHAR(100) Email
    INT BillingAddressFk FK
    BIT IsCompany
}

Address {
    INT AddressSk PK
    NVARCHAR(100) Country
    NVARCHAR(20) Zip
    NVARCHAR(100) City
    NVARCHAR(200) Street
    INT CustomerFk FK
}

Product {
    INT ProductSk PK
    VARCHAR(13) EAN
    NVARCHAR(50) ProductName
    NVARCHAR(MAX) Description
    DECIMAL NetPrice 
    DECIMAL VatPercent "In percent"
    DECIMAL GrossPrice
    INT StockQuantity
    INT CategoryFk FK
}

Category {
    INT CategorySk PK
    NVARCHAR(50) CategoryName
    INT ParentCategoryFk FK
}

ProductPriceHistory {
    INT ProductPriceHistorySk PK
    INT ProductFk FK
    MONEY NetPrice
    DECIMAL VatPercent
    DATETIME2 ChangeDateUTC
}

Order {
    INT OrderSk PK
    INT CustomerFk FK
    INT OrderStatusFk FK
    DATETIME2 OrderDate
    INT DeliveryAddressFk FK
}

OrderDetail {
    INT OrderDetailSk PK
    INT OrderFk FK
    INT ProductFk FK
    INT Quantity
    MONEY NetPrice
    DECIMAL VatPercent
    MONEY GrossPrice
}

OrderStatus {
    CHAR(1) OrderStatusId PK
    NVARCHAR(50) StatusName
}

%% ===== Kapcsolatok =====
Order }o--|| OrderStatus : "has status"
Address }o--|| Customer : "belongs to customer"
Customer }o--|| Address : "billing address"

Customer ||--o{ Order : "places"

Order ||--|{ OrderDetail : "contains"

OrderDetail }o--|| Product : "refers to"

Product ||--o{ ProductPriceHistory : "has price history"
Product }o--|| Category : "belongs to"


Category ||--o{ Category : "sub-category"
```

---


# Atatbázist felépítő SQL mondatok

## Adatbázis kiürítése

Ha esetleg előröl akarod kezdeni, az alábbi SQL eldob minden táblát és kényszert. Ezt lehet AGENT módban is csinálni. 

``` sql
-- Drop all foreign key constraints
DECLARE @sql NVARCHAR(MAX) = N'';
SELECT @sql += 'ALTER TABLE [' + s.name + '].[' + t.name + '] DROP CONSTRAINT [' + f.name + '];'
FROM sys.foreign_keys f
JOIN sys.tables t ON f.parent_object_id = t.object_id
JOIN sys.schemas s ON t.schema_id = s.schema_id;
EXEC sp_executesql @sql;

-- Drop all tables
SET @sql = N'';
SELECT @sql += 'DROP TABLE [' + s.name + '].[' + t.name + '];'
FROM sys.tables t
JOIN sys.schemas s ON t.schema_id = s.schema_id;
EXEC sp_executesql @sql;
```

## Adatbázis felépítése

```sql
CREATE TABLE Address (
    AddressSk INT IDENTITY(1,1) PRIMARY KEY,
    Country NVARCHAR(100) NOT NULL,
    Zip NVARCHAR(20) NOT NULL,
    City NVARCHAR(100) NOT NULL,
    Street NVARCHAR(200) NOT NULL,
    CustomerFk INT NOT NULL
);

CREATE TABLE Customer (
    CustomerSk INT IDENTITY(1,1) PRIMARY KEY,
    Salutation NVARCHAR(20),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    CompanyName NVARCHAR(100),
    EUTaxNumber VARCHAR(20),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100) NOT NULL UNIQUE,
    BillingAddressFk INT,
    IsCompany BIT NOT NULL,
    CONSTRAINT FK_Customer_BillingAddress FOREIGN KEY (BillingAddressFk) REFERENCES Address(AddressSk) ON DELETE CASCADE
);

-- Ezt nem lehet megcsinálni, csak azután, hogy kész a Customer tábla

ALTER TABLE Address
ADD CONSTRAINT FK_Address_Customer
FOREIGN KEY (CustomerFk) REFERENCES Customer(CustomerSk);


CREATE TABLE Category (
    CategorySk INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName NVARCHAR(50) NOT NULL,
    ParentCategoryFk INT,
    CONSTRAINT FK_Category_Parent FOREIGN KEY (ParentCategoryFk) REFERENCES Category(CategorySk)
);

CREATE TABLE Product (
    ProductSk INT IDENTITY(1,1) PRIMARY KEY,
    EAN VARCHAR(13),
    ProductName NVARCHAR(50) NOT NULL,
    Description NVARCHAR(MAX),
    NetPrice MONEY NOT NULL,
    VatPercent DECIMAL(5,2) NOT NULL,
    GrossPrice AS (NetPrice * (1 + VatPercent / 100.0)),
    StockQuantity INT NOT NULL DEFAULT(0) CHECK(StockQuantity >0),
    CategoryFk INT,
    CONSTRAINT FK_Product_Category FOREIGN KEY (CategoryFk) REFERENCES Category(CategorySk)
);

CREATE TABLE ProductPriceHistory (
    ProductPriceHistorySk INT IDENTITY(1,1) PRIMARY KEY,
    ProductFk INT NOT NULL,
    NetPrice MONEY NOT NULL,
    VatPercent DECIMAL(3,0) NOT NULL,
    ChangeDateUTC DATETIME2 NOT NULL,
    CONSTRAINT FK_PriceHistory_Product FOREIGN KEY (ProductFk) REFERENCES Product(ProductSk)
);

CREATE TABLE OrderStatus (
    OrderStatusId CHAR(1) PRIMARY KEY,
    StatusName NVARCHAR(50) NOT NULL
);

CREATE TABLE [Order] (
    OrderSk INT IDENTITY(1,1) PRIMARY KEY,
    CustomerFk INT NOT NULL,
    OrderStatusFk CHAR(1) NOT NULL,
    OrderDate DATETIME2 NOT NULL,
    DeliveryAddressFk INT,
    CONSTRAINT FK_Order_Customer FOREIGN KEY (CustomerFk) REFERENCES Customer(CustomerSk),
    CONSTRAINT FK_Order_Status FOREIGN KEY (OrderStatusFk) REFERENCES OrderStatus(OrderStatusId),
    CONSTRAINT FK_Order_DeliveryAddress FOREIGN KEY (DeliveryAddressFk) REFERENCES Address(AddressSk)
);

CREATE TABLE OrderDetail (
    OrderDetailSk INT IDENTITY(1,1) PRIMARY KEY,
    OrderFk INT NOT NULL,
    ProductFk INT NOT NULL,
    Quantity INT NOT NULL,
    NetPrice MONEY NOT NULL,
    VatPercent DECIMAL(3,0) NOT NULL,
    GrossPrice AS (NetPrice * (1 + VatPercent / 100.0)),
    CONSTRAINT FK_OrderDetail_Order FOREIGN KEY (OrderFk) REFERENCES [Order](OrderSk),
    CONSTRAINT FK_OrderDetail_Product FOREIGN KEY (ProductFk) REFERENCES Product(ProductSk)
);
```

# Adatbázis feltöltése mintaadatokkal 

## A kategóriák


``` mermaid
graph TD
    A[Products]
    A --> B[Electronics]
    A --> C[Clothing]
    A --> D[Home & Garden]

    B --> E[Mobile Phones]
    B --> F[Laptops]
    B --> G[Cameras]

    C --> H[Men's Clothing]
    C --> I[Women's Clothing]
    C --> J[Accessories]

    D --> K[Furniture]
    D --> L[Kitchenware]
    D --> M[Gardening Tools]
```

> [!tip]
>
> Előfordulhat, hogy a táblák mintaadatokkal történő feltöltése rosszul sikerül. Ilyenkor törölni kell az összes sort, viszont törlés után az automatikusan számozódó IDENTITY mezők számozása nem indul újra. Ezen segít az alábbi SQL parancs, ahol a tábla neve `ProductCategory`:
> ```sql
> DBCC CHECKIDENT ('ProductCategory', RESEED, 1);
> ```

```sql
-- Főkategória
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Products', NULL); -- 1

-- Második szint
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Electronics', 1); -- 2
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Clothing', 1);    -- 3
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Home & Garden', 1); -- 4

-- Harmadik szint
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Mobile Phones', 2); -- 5
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Laptops', 2);       -- 6
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Cameras', 2);       -- 7

INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Men''s Clothing', 3);   -- 8
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Women''s Clothing', 3); -- 9
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Accessories', 3);       -- 10

INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Furniture', 4);         -- 11
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Kitchenware', 4);       -- 12
INSERT INTO Category (CategoryName, ParentCategoryFk) VALUES (N'Gardening Tools', 4);   -- 13
```

## Mintatermékek feltöltése

```sql
-- 100 sample products with 27% VAT, realistic names and descriptions
INSERT INTO Product (EAN, ProductName, Description, NetPrice, VatPercent, StockQuantity, CategoryFk) VALUES
('5901234123451', 'Samsung Galaxy S24', 'Flagship Android smartphone with 128GB storage', 299000, 27.00, 25, 5),
('5901234123452', 'Apple iPhone 15', 'Latest iPhone with A17 Bionic chip and OLED display', 399000, 27.00, 18, 5),
('5901234123453', 'Dell XPS 13', 'Ultra-thin laptop with Intel i7 processor and 16GB RAM', 499000, 27.00, 12, 6),
('5901234123454', 'HP Pavilion 15', 'Affordable laptop for everyday use, 8GB RAM, 512GB SSD', 249000, 27.00, 20, 6),
('5901234123455', 'Canon EOS 250D', 'Lightweight DSLR camera with 24MP sensor', 189000, 27.00, 10, 7),
('5901234123456', 'Nikon D5600', 'DSLR camera with flip-out touchscreen and Wi-Fi', 209000, 27.00, 8, 7),
('5901234123457', 'Sony WH-1000XM5', 'Wireless noise-cancelling headphones', 129000, 27.00, 30, 10),
('5901234123458', 'Apple AirPods Pro', 'True wireless earbuds with active noise cancellation', 99900, 27.00, 22, 10),
('5901234123459', 'Samsung QLED TV 55"', '4K Ultra HD Smart TV with HDR', 299900, 27.00, 7, 2),
('5901234123460', 'LG OLED TV 48"', 'Self-lit OLED TV with Dolby Vision', 349900, 27.00, 6, 2),
('5901234123461', 'Bosch Serie 6 Washing Machine', 'Front-loading washing machine, 9kg, A+++', 179900, 27.00, 9, 11),
('5901234123462', 'Whirlpool Refrigerator', 'Double-door fridge with NoFrost technology', 219900, 27.00, 8, 11),
('5901234123463', 'IKEA EKTORP Sofa', '3-seater sofa with washable cover', 89900, 27.00, 15, 11),
('5901234123464', 'Philips Airfryer XXL', 'Healthy air fryer for oil-free cooking', 59900, 27.00, 14, 12),
('5901234123465', 'Tefal Ingenio Cookware Set', '10-piece non-stick kitchenware set', 49900, 27.00, 20, 12),
('5901234123466', 'Makita Cordless Drill', '18V lithium-ion battery, 2-speed', 39900, 27.00, 13, 13),
('5901234123467', 'Gardena Garden Hose', '25m flexible garden hose with spray gun', 14900, 27.00, 25, 13),
('5901234123468', 'Levi''s 501 Jeans', 'Classic straight fit men''s jeans', 24900, 27.00, 40, 8),
('5901234123469', 'Nike Air Max 270', 'Men''s running shoes with air cushioning', 34900, 27.00, 35, 8),
('5901234123470', 'Adidas Ultraboost', 'Women''s performance running shoes', 39900, 27.00, 28, 9),
('5901234123471', 'Zara Summer Dress', 'Floral print women''s dress, lightweight fabric', 19900, 27.00, 32, 9),
('5901234123472', 'Ray-Ban Aviator Sunglasses', 'Classic metal frame sunglasses with UV protection', 29900, 27.00, 18, 10),
('5901234123473', 'Fossil Leather Wallet', 'Men''s genuine leather wallet with coin pocket', 9900, 27.00, 50, 10),
('5901234123474', 'Apple Watch Series 9', 'Smartwatch with fitness tracking and ECG', 159900, 27.00, 16, 10),
('5901234123475', 'Samsung Galaxy Watch 6', 'Smartwatch with AMOLED display and GPS', 129900, 27.00, 18, 10),
('5901234123476', 'GoPro HERO12', 'Action camera with 5K video and waterproof case', 139900, 27.00, 12, 7),
('5901234123477', 'DJI Mini 3 Drone', 'Ultra-light drone with 4K camera', 199900, 27.00, 10, 7),
('5901234123478', 'Apple MacBook Air M2', '13-inch laptop with Apple Silicon chip', 499900, 27.00, 8, 6),
('5901234123479', 'Lenovo ThinkPad X1', 'Business ultrabook with fingerprint reader', 399900, 27.00, 7, 6),
('5901234123480', 'Samsung Galaxy Tab S9', 'Android tablet with S Pen and AMOLED display', 249900, 27.00, 15, 6),
('5901234123481', 'Amazon Kindle Paperwhite', 'E-book reader with backlit display', 49900, 27.00, 20, 6),
('5901234123482', 'Sony PlayStation 5', 'Next-gen gaming console with 1TB SSD', 249900, 27.00, 5, 2),
('5901234123483', 'Microsoft Xbox Series X', 'Powerful gaming console with 4K support', 249900, 27.00, 6, 2),
('5901234123484', 'Nintendo Switch OLED', 'Hybrid gaming console with vibrant display', 149900, 27.00, 8, 2),
('5901234123485', 'JBL Flip 6 Speaker', 'Portable Bluetooth speaker, waterproof', 39900, 27.00, 30, 10),
('5901234123486', 'Bose QuietComfort Earbuds', 'Noise-cancelling true wireless earbuds', 79900, 27.00, 22, 10),
('5901234123487', 'KitchenAid Stand Mixer', 'Professional kitchen mixer, 4.8L bowl', 159900, 27.00, 9, 12),
('5901234123488', 'DeLonghi Espresso Machine', 'Automatic coffee maker with milk frother', 129900, 27.00, 7, 12),
('5901234123489', 'Dyson V15 Vacuum Cleaner', 'Cordless vacuum with laser dust detection', 199900, 27.00, 6, 11),
('5901234123490', 'Rowenta Steam Iron', 'Powerful steam iron with anti-calc system', 24900, 27.00, 15, 12),
('5901234123491', 'Bosch Dishwasher', 'Freestanding dishwasher, 13 place settings', 179900, 27.00, 8, 11),
('5901234123492', 'Electrolux Oven', 'Built-in electric oven with grill function', 159900, 27.00, 7, 12),
('5901234123493', 'IKEA MALM Bed Frame', 'Queen size bed frame, white finish', 69900, 27.00, 10, 11),
('5901234123494', 'IKEA BILLY Bookcase', 'Classic bookcase, adjustable shelves', 19900, 27.00, 18, 11),
('5901234123495', 'Bosch Cordless Hedge Trimmer', 'Battery-powered hedge trimmer, 50cm blade', 39900, 27.00, 12, 13),
('5901234123496', 'Gardena Lawn Mower', 'Electric lawn mower, 32cm cutting width', 59900, 27.00, 8, 13),
('5901234123497', 'Makita Leaf Blower', 'Cordless leaf blower, lightweight design', 29900, 27.00, 14, 13),
('5901234123498', 'Stanley Tool Set', '100-piece hand tool set in case', 24900, 27.00, 20, 13),
('5901234123499', 'Samsung Galaxy Buds2', 'Wireless earbuds with ambient sound', 49900, 27.00, 25, 10),
('5901234123500', 'Apple iPad 10th Gen', '10.9-inch tablet, A14 Bionic chip', 199900, 27.00, 12, 6),
('5901234123501', 'HP Envy 17', '17-inch laptop, Intel i7, 16GB RAM', 349900, 27.00, 6, 6),
('5901234123502', 'Asus ROG Zephyrus', 'Gaming laptop, RTX 4060, 1TB SSD', 599900, 27.00, 5, 6),
('5901234123503', 'Canon PowerShot G7X', 'Compact digital camera, 20MP sensor', 129900, 27.00, 8, 7),
('5901234123504', 'Nikon Coolpix B600', 'Superzoom camera, 60x optical zoom', 99900, 27.00, 7, 7),
('5901234123505', 'Sony Alpha a6400', 'Mirrorless camera, 24MP, 4K video', 299900, 27.00, 6, 7),
('5901234123506', 'Apple Mac Mini M2', 'Desktop computer, 16GB RAM, 512GB SSD', 299900, 27.00, 8, 6),
('5901234123507', 'Samsung Galaxy S23 FE', 'Affordable Android phone, 128GB', 199900, 27.00, 15, 5),
('5901234123508', 'Xiaomi Redmi Note 12', 'Budget smartphone, 6.5-inch display', 79900, 27.00, 20, 5),
('5901234123509', 'OnePlus 11', 'Flagship phone, Snapdragon 8 Gen 2', 249900, 27.00, 10, 5),
('5901234123510', 'Realme 10 Pro', 'Mid-range Android phone, 8GB RAM', 99900, 27.00, 18, 5),
('5901234123511', 'Huawei P60 Pro', 'High-end phone, Leica camera', 299900, 27.00, 7, 5),
('5901234123512', 'Google Pixel 8', 'Android phone, pure Google experience', 249900, 27.00, 9, 5),
('5901234123513', 'Motorola Moto G84', 'Affordable phone, 5000mAh battery', 69900, 27.00, 13, 5),
('5901234123514', 'Sony Xperia 10 V', 'Slim Android phone, waterproof', 119900, 27.00, 11, 5),
('5901234123515', 'Oppo Reno 10', 'Stylish phone, 64MP camera', 139900, 27.00, 10, 5),
('5901234123516', 'Vivo V29', 'Android phone, 256GB storage', 159900, 27.00, 8, 5),
('5901234123517', 'TCL 20 Pro', 'Android phone, curved AMOLED', 89900, 27.00, 12, 5),
('5901234123518', 'Alcatel 1S', 'Entry-level phone, dual SIM', 39900, 27.00, 20, 5),
('5901234123519', 'Honor Magic5 Lite', 'Mid-range phone, 120Hz display', 119900, 27.00, 14, 5),
('5901234123520', 'Fairphone 5', 'Sustainable phone, modular design', 199900, 27.00, 6, 5),
('5901234123521', 'Nothing Phone (2)', 'Unique design, transparent back', 179900, 27.00, 7, 5),
('5901234123522', 'Poco F5', 'Gaming phone, Snapdragon 7+ Gen 2', 149900, 27.00, 9, 5),
('5901234123523', 'Asus Zenfone 10', 'Compact Android phone, 5.9-inch', 199900, 27.00, 8, 5),
('5901234123524', 'Realme C55', 'Budget phone, 64GB storage', 59900, 27.00, 15, 5),
('5901234123525', 'Infinix Note 30', 'Affordable phone, 45W fast charging', 69900, 27.00, 13, 5),
('5901234123526', 'Tecno Camon 20', 'Android phone, 50MP camera', 79900, 27.00, 12, 5),
('5901234123527', 'Doogee S100', 'Rugged phone, 10800mAh battery', 99900, 27.00, 10, 5),
('5901234123528', 'Cubot X70', 'Android phone, 12GB RAM', 89900, 27.00, 8, 5),
('5901234123529', 'Ulefone Armor 21', 'Rugged phone, night vision camera', 119900, 27.00, 7, 5),
('5901234123530', 'Blackview BV9300', 'Rugged phone, 15080mAh battery', 139900, 27.00, 6, 5),
('5901234123531', 'Cat S75', 'Rugged phone, satellite messaging', 199900, 27.00, 5, 5),
('5901234123532', 'AGM Glory G1S', 'Rugged phone, thermal camera', 159900, 27.00, 4, 5),
('5901234123533', 'Unihertz Titan Slim', 'QWERTY keyboard Android phone', 89900, 27.00, 8, 5),
('5901234123534', 'Samsung Galaxy Z Flip5', 'Foldable phone, 6.7-inch display', 399900, 27.00, 6, 5),
('5901234123535', 'Motorola Razr 40', 'Foldable phone, 144Hz display', 349900, 27.00, 5, 5),
('5901234123536', 'Huawei Mate X3', 'Foldable phone, 7.85-inch OLED', 599900, 27.00, 3, 5),
('5901234123537', 'Oppo Find N2 Flip', 'Foldable phone, 4300mAh battery', 299900, 27.00, 2, 5),
('5901234123538', 'Honor Magic V2', 'Foldable phone, 5000mAh battery', 499900, 27.00, 1, 5),
('5901234123539', 'Xiaomi Mix Fold 3', 'Foldable phone, Leica camera', 599900, 27.00, 1, 5),
('5901234123540', 'Vivo X Fold2', 'Foldable phone, 8.03-inch display', 549900, 27.00, 1, 5),
('5901234123541', 'Lenovo Legion Phone Duel 2', 'Gaming phone, dual cooling fans', 299900, 27.00, 1, 5),
('5901234123542', 'Asus ROG Phone 7', 'Gaming phone, 165Hz AMOLED', 399900, 27.00, 1, 5),
('5901234123543', 'RedMagic 8 Pro', 'Gaming phone, Snapdragon 8 Gen 2', 349900, 27.00, 1, 5),
('5901234123544', 'ZTE Axon 50 Ultra', 'Android phone, 200MP camera', 299900, 27.00, 1, 5),
('5901234123545', 'Meizu 20 Pro', 'Android phone, 2K display', 249900, 27.00, 1, 5),
('5901234123546', 'Sharp Aquos R8 Pro', 'Android phone, 1-inch sensor', 199900, 27.00, 1, 5),
('5901234123547', 'Realme GT 3', 'Android phone, 240W fast charging', 179900, 27.00, 1, 5),
('5901234123548', 'Tecno Phantom V Fold', 'Foldable phone, 7.85-inch display', 299900, 27.00, 1, 5),
('5901234123549', 'Honor X50', 'Android phone, 5800mAh battery', 99900, 27.00, 1, 5),
('5901234123550', 'Infinix Zero 30', 'Android phone, 4K selfie camera', 89900, 27.00, 1, 5);
```

## Az OrderStatus tábla feltöltése

```sql
-- Sample statuses for OrderStatus table
INSERT INTO OrderStatus (OrderStatusId, StatusName) VALUES
('N', N'New'),
('P', N'Processing'),
('S', N'Shipped'),
('D', N'Delivered'),
('C', N'Cancelled'),
('R', N'Returned');
```

## Mintaügyfelek

Ez nem volt feladat gyakorlaton, de ha már itt vagyunk :)

```sql
-- 10 company customers
INSERT INTO Customer (Salutation, FirstName, LastName, CompanyName, EUTaxNumber, PhoneNumber, Email, IsCompany)
VALUES
('Mr.', 'Peter', 'Johnson', 'Acme Corporation', 'EU90000001', '+3611111111', 'info@acme.com', 1),
('Ms.', 'Linda', 'Smith', 'Globex Ltd.', 'EU90000002', '+3622222222', 'contact@globex.com', 1),
('Mr.', 'Michael', 'Anderson', 'Initech Solutions', 'EU90000003', '+3633333333', 'hello@initech.com', 1),
('Ms.', 'Sarah', 'Miller', 'Umbrella Group', 'EU90000004', '+3644444444', 'office@umbrella.com', 1),
('Mr.', 'Bruce', 'Wayne', 'Wayne Enterprises', 'EU90000005', '+3655555555', 'admin@wayne.com', 1),
('Mr.', 'Tony', 'Stark', 'Stark Industries', 'EU90000006', '+3666666666', 'mail@stark.com', 1),
('Mr.', 'Willy', 'Wonka', 'Wonka Foods', 'EU90000007', '+3677777777', 'sales@wonka.com', 1),
('Mr.', 'Gavin', 'Belson', 'Hooli Inc.', 'EU90000008', '+3688888888', 'support@hooli.com', 1),
('Ms.', 'Sarah', 'Connor', 'Cyberdyne Systems', 'EU90000009', '+3699999999', 'info@cyberdyne.com', 1),
('Mr.', 'Art', 'Vandelay', 'Vandelay Industries', 'EU90000010', '+3612121212', 'contact@vandelay.com', 1);

-- 50 sample customers with realistic names

INSERT INTO Customer (Salutation, FirstName, LastName, CompanyName, EUTaxNumber, PhoneNumber, Email, IsCompany)
VALUES
('Mr.', 'John', 'Smith', NULL, 'EU12345678', '+3612345678', 'john.smith@gmail.com', 0),
('Ms.', 'Emily', 'Johnson', NULL, 'EU23456789', '+3620123456', 'emily.johnson@email.com', 0),
('Mrs.', 'Olivia', 'Williams', NULL, 'EU34567890', '+3630123456', 'olivia.williams@email.com', 0),
('Mr.', 'James', 'Brown', NULL, 'EU45678901', '+3640123456', 'james.brown@email.com', 0),
('Ms.', 'Sophia', 'Jones', NULL, 'EU56789012', '+3650123456', 'sophia.jones@email.com', 0),
('Mr.', 'Liam', 'Garcia', NULL, 'EU67890123', '+3660123456', 'liam.garcia@email.com', 0),
('Ms.', 'Isabella', 'Martinez', NULL, 'EU78901234', '+3670123456', 'isabella.martinez@email.com', 0),
('Mr.', 'Noah', 'Rodriguez', NULL, 'EU89012345', '+3680123456', 'noah.rodriguez@email.com', 0),
('Mrs.', 'Mia', 'Lee', NULL, 'EU90123456', '+3690123456', 'mia.lee@email.com', 0),
('Mr.', 'Lucas', 'Walker', NULL, 'EU01234567', '+3611122233', 'lucas.walker@email.com', 0),
('Ms.', 'Charlotte', 'Hall', NULL, 'EU11223344', '+3622233344', 'charlotte.hall@email.com', 0),
('Mr.', 'Benjamin', 'Allen', NULL, 'EU22334455', '+3633344455', 'benjamin.allen@email.com', 0),
('Ms.', 'Amelia', 'Young', NULL, 'EU33445566', '+3644455566', 'amelia.young@email.com', 0),
('Mr.', 'Elijah', 'King', NULL, 'EU44556677', '+3655566677', 'elijah.king@email.com', 0),
('Ms.', 'Evelyn', 'Wright', NULL, 'EU55667788', '+3666677788', 'evelyn.wright@email.com', 0),
('Mr.', 'William', 'Scott', NULL, 'EU66778899', '+3677788899', 'william.scott@email.com', 0),
('Ms.', 'Harper', 'Green', NULL, 'EU77889900', '+3688899001', 'harper.green@email.com', 0),
('Mr.', 'Henry', 'Baker', NULL, 'EU88990011', '+3699900112', 'henry.baker@email.com', 0),
('Ms.', 'Ella', 'Adams', NULL, 'EU99001122', '+3612233445', 'ella.adams@email.com', 0),
('Mr.', 'Alexander', 'Nelson', NULL, 'EU10111213', '+3623344556', 'alexander.nelson@email.com', 0),
('Ms.', 'Avery', 'Carter', NULL, 'EU12131415', '+3634455667', 'avery.carter@email.com', 0),
('Mr.', 'Sebastian', 'Mitchell', NULL, 'EU13141516', '+3645566778', 'sebastian.mitchell@email.com', 0),
('Ms.', 'Scarlett', 'Perez', NULL, 'EU14151617', '+3656677889', 'scarlett.perez@email.com', 0),
('Mr.', 'Jack', 'Roberts', NULL, 'EU15161718', '+3667788990', 'jack.roberts@email.com', 0),
('Ms.', 'Grace', 'Turner', NULL, 'EU16171819', '+3678899001', 'grace.turner@email.com', 0),
('Mr.', 'Daniel', 'Phillips', NULL, 'EU17181920', '+3689900112', 'daniel.phillips@email.com', 0),
('Ms.', 'Chloe', 'Campbell', NULL, 'EU18192021', '+3691011121', 'chloe.campbell@email.com', 0),
('Mr.', 'Matthew', 'Parker', NULL, 'EU19202122', '+3613141516', 'matthew.parker@email.com', 0),
('Ms.', 'Penelope', 'Evans', NULL, 'EU20212223', '+3624151617', 'penelope.evans@email.com', 0),
('Mr.', 'David', 'Edwards', NULL, 'EU21222324', '+3635161718', 'david.edwards@email.com', 0),
('Ms.', 'Layla', 'Collins', NULL, 'EU22232425', '+3646171819', 'layla.collins@email.com', 0),
('Mr.', 'Joseph', 'Stewart', NULL, 'EU23242526', '+3657181920', 'joseph.stewart@email.com', 0),
('Ms.', 'Lily', 'Sanchez', NULL, 'EU24252627', '+3668192021', 'lily.sanchez@email.com', 0),
('Mr.', 'Samuel', 'Morris', NULL, 'EU25262728', '+3679202122', 'samuel.morris@email.com', 0),
('Ms.', 'Zoey', 'Rogers', NULL, 'EU26272829', '+3680212223', 'zoey.rogers@email.com', 0),
('Mr.', 'Carter', 'Reed', NULL, 'EU27282930', '+3691222324', 'carter.reed@email.com', 0),
('Ms.', 'Nora', 'Cook', NULL, 'EU28293031', '+3612233445', 'nora.cook@email.com', 0),
('Mr.', 'Owen', 'Morgan', NULL, 'EU29303132', '+3623344556', 'owen.morgan@email.com', 0),
('Ms.', 'Hazel', 'Bell', NULL, 'EU30313233', '+3634455667', 'hazel.bell@email.com', 0),
('Mr.', 'Wyatt', 'Murphy', NULL, 'EU31323334', '+3645566778', 'wyatt.murphy@email.com', 0),
('Ms.', 'Aurora', 'Bailey', NULL, 'EU32333435', '+3656677889', 'aurora.bailey@email.com', 0),
('Mr.', 'Julian', 'Rivera', NULL, 'EU33343536', '+3667788990', 'julian.rivera@email.com', 0),
('Ms.', 'Savannah', 'Cooper', NULL, 'EU34353637', '+3678899001', 'savannah.cooper@email.com', 0),
('Mr.', 'Leo', 'Richardson', NULL, 'EU35363738', '+3689900112', 'leo.richardson@email.com', 0),
('Ms.', 'Brooklyn', 'Cox', NULL, 'EU36373839', '+3691011121', 'brooklyn.cox@email.com', 0),
('Mr.', 'Lincoln', 'Howard', NULL, 'EU37383940', '+3613141516', 'lincoln.howard@email.com', 0),
('Ms.', 'Stella', 'Ward', NULL, 'EU38394041', '+3624151617', 'stella.ward@email.com', 0),
('Mr.', 'Hudson', 'Torres', NULL, 'EU39404142', '+3635161718', 'hudson.torres@email.com', 0),
('Ms.', 'Victoria', 'Peterson', NULL, 'EU40414243', '+3646171819', 'victoria.peterson@email.com', 0);

-- Sample addresses for each customer
-- For simplicity, CustomerSk assumed to be assigned in order (1-60)

-- Company customers (1-10)
INSERT INTO Address (Country, Zip, City, Street, CustomerFk) VALUES
('Hungary', '1117', 'Budapest', 'Infopark sétány 1.', 1),
('Hungary', '1138', 'Budapest', 'Váci út 99.', 2),
('Hungary', '4026', 'Debrecen', 'Piac utca 45.', 3),
('Hungary', '6720', 'Szeged', 'Dugonics tér 12.', 4),
('Hungary', '9022', 'Győr', 'Baross Gábor út 5.', 5),
('Hungary', '8000', 'Székesfehérvár', 'Palotai út 1.', 6),
('Hungary', '7621', 'Pécs', 'Király utca 8.', 7),
('Hungary', '4400', 'Nyíregyháza', 'Kossuth tér 3.', 8),
('Hungary', '6000', 'Kecskemét', 'Katona József tér 4.', 9),
('Hungary', '5000', 'Szolnok', 'Szapáry út 10.', 10);

-- Individual customers (11-60), 1-3 addresses each
INSERT INTO Address (Country, Zip, City, Street, CustomerFk) VALUES
('Hungary', '1011', 'Budapest', 'Fő utca 1.', 11),
('Hungary', '1012', 'Budapest', 'Várfok utca 2.', 11),
('Hungary', '1013', 'Budapest', 'Attila út 3.', 11),
('Hungary', '1021', 'Budapest', 'Hűvösvölgyi út 4.', 12),
('Hungary', '1022', 'Budapest', 'Lövőház utca 5.', 12),
('Hungary', '1031', 'Budapest', 'Nánási út 6.', 13),
('Hungary', '1041', 'Budapest', 'Árpád út 7.', 14),
('Hungary', '1051', 'Budapest', 'Bajcsy-Zsilinszky út 8.', 15),
('Hungary', '1061', 'Budapest', 'Andrássy út 9.', 16),
('Hungary', '1071', 'Budapest', 'Dózsa György út 10.', 17),
('Hungary', '1081', 'Budapest', 'Baross utca 11.', 18),
('Hungary', '1091', 'Budapest', 'Üllői út 12.', 19),
('Hungary', '1101', 'Budapest', 'Kőbányai út 13.', 20),
('Hungary', '1111', 'Budapest', 'Bartók Béla út 14.', 21),
('Hungary', '1121', 'Budapest', 'Németvölgyi út 15.', 22),
('Hungary', '1131', 'Budapest', 'Reitter Ferenc utca 16.', 23),
('Hungary', '1141', 'Budapest', 'Fogarasi út 17.', 24),
('Hungary', '1151', 'Budapest', 'Károlyi Sándor út 18.', 25),
('Hungary', '1161', 'Budapest', 'Rákosi út 19.', 26),
('Hungary', '1171', 'Budapest', 'Pesti út 20.', 27),
('Hungary', '1181', 'Budapest', 'Üllői út 21.', 28),
('Hungary', '1191', 'Budapest', 'Ady Endre út 22.', 29),
('Hungary', '1201', 'Budapest', 'Nagykőrösi út 23.', 30),
('Hungary', '1211', 'Budapest', 'Kossuth Lajos utca 24.', 31),
('Hungary', '1221', 'Budapest', 'Nagytétényi út 25.', 32),
('Hungary', '1239', 'Budapest', 'Grassalkovich út 26.', 33),
('Hungary', '2000', 'Szentendre', 'Duna korzó 27.', 34),
('Hungary', '2013', 'Pomáz', 'Kossuth Lajos utca 28.', 35),
('Hungary', '2030', 'Érd', 'Budai út 29.', 36),
('Hungary', '2040', 'Budaörs', 'Szabadság út 30.', 37),
('Hungary', '2100', 'Gödöllő', 'Szabadság tér 31.', 38),
('Hungary', '2120', 'Dunakeszi', 'Fő út 32.', 39),
('Hungary', '2143', 'Kistarcsa', 'Szabadság út 33.', 40),
('Hungary', '2200', 'Monor', 'Kossuth Lajos utca 34.', 41),
('Hungary', '2310', 'Szigetszentmiklós', 'Csepeli út 35.', 42),
('Hungary', '2330', 'Dunaharaszti', 'Fő út 36.', 43),
('Hungary', '2370', 'Dabas', 'Szabadság út 37.', 44),
('Hungary', '2400', 'Dunaújváros', 'Vasmű út 38.', 45),
('Hungary', '2500', 'Esztergom', 'Kossuth Lajos utca 39.', 46),
('Hungary', '2600', 'Vác', 'Széchenyi utca 40.', 47),
('Hungary', '2700', 'Cegléd', 'Kossuth Ferenc utca 41.', 48),
('Hungary', '2800', 'Tatabánya', 'Szent Borbála út 42.', 49),
('Hungary', '3000', 'Hatvan', 'Kossuth tér 43.', 50),
('Hungary', '3200', 'Gyöngyös', 'Fő tér 44.', 51),
('Hungary', '3300', 'Eger', 'Dobó tér 45.', 52),
('Hungary', '3400', 'Mezőkövesd', 'Mátyás király út 46.', 53),
('Hungary', '3500', 'Miskolc', 'Széchenyi utca 47.', 54),
('Hungary', '3600', 'Ózd', 'Vasvár út 48.', 55),
('Hungary', '3700', 'Kazincbarcika', 'Egressy Béni út 49.', 56),
('Hungary', '3800', 'Szikszó', 'Kossuth Lajos utca 50.', 57),
('Hungary', '3900', 'Sárospatak', 'Comenius utca 51.', 58),
('Hungary', '4000', 'Debrecen', 'Kossuth tér 52.', 59);

-- Set BillingAddressFk for each customer to their first address
-- Company customers
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 1) WHERE CustomerSk = 1;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 2) WHERE CustomerSk = 2;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 3) WHERE CustomerSk = 3;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 4) WHERE CustomerSk = 4;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 5) WHERE CustomerSk = 5;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 6) WHERE CustomerSk = 6;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 7) WHERE CustomerSk = 7;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 8) WHERE CustomerSk = 8;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 9) WHERE CustomerSk = 9;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 10) WHERE CustomerSk = 10;

-- Individual customers
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 11) WHERE CustomerSk = 11;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 12) WHERE CustomerSk = 12;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 13) WHERE CustomerSk = 13;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 14) WHERE CustomerSk = 14;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 15) WHERE CustomerSk = 15;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 16) WHERE CustomerSk = 16;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 17) WHERE CustomerSk = 17;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 18) WHERE CustomerSk = 18;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 19) WHERE CustomerSk = 19;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 20) WHERE CustomerSk = 20;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 21) WHERE CustomerSk = 21;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 22) WHERE CustomerSk = 22;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 23) WHERE CustomerSk = 23;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 24) WHERE CustomerSk = 24;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 25) WHERE CustomerSk = 25;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 26) WHERE CustomerSk = 26;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 27) WHERE CustomerSk = 27;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 28) WHERE CustomerSk = 28;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 29) WHERE CustomerSk = 29;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 30) WHERE CustomerSk = 30;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 31) WHERE CustomerSk = 31;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 32) WHERE CustomerSk = 32;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 33) WHERE CustomerSk = 33;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 34) WHERE CustomerSk = 34;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 35) WHERE CustomerSk = 35;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 36) WHERE CustomerSk = 36;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 37) WHERE CustomerSk = 37;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 38) WHERE CustomerSk = 38;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 39) WHERE CustomerSk = 39;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 40) WHERE CustomerSk = 40;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 41) WHERE CustomerSk = 41;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 42) WHERE CustomerSk = 42;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 43) WHERE CustomerSk = 43;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 44) WHERE CustomerSk = 44;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 45) WHERE CustomerSk = 45;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 46) WHERE CustomerSk = 46;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 47) WHERE CustomerSk = 47;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 48) WHERE CustomerSk = 48;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 49) WHERE CustomerSk = 49;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 50) WHERE CustomerSk = 50;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 51) WHERE CustomerSk = 51;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 52) WHERE CustomerSk = 52;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 53) WHERE CustomerSk = 53;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 54) WHERE CustomerSk = 54;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 55) WHERE CustomerSk = 55;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 56) WHERE CustomerSk = 56;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 57) WHERE CustomerSk = 57;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 58) WHERE CustomerSk = 58;
UPDATE Customer SET BillingAddressFk = (SELECT MIN(AddressSk) FROM Address WHERE CustomerFk = 59) WHERE CustomerSk = 59;
```