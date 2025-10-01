# Kényszerek beállítására

## Kiinduló tábla

```sql
CREATE TABLE Customer (
    CustomerSk INT,
    Name NVARCHAR(100),
    ContactPerson NVARCHAR(100),
    TaxNumber VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    BillingAddress NVARCHAR(200),
    IsCompany BIT,
    RegistrationDate DATETIME2
);
```

## PRIMARY KEY kényszer

Az elsődleges kulcs is egy kényszer!!! Tegyük a `CustomerSk` mezőt elsődleges kulccsá:

```sql
CREATE TABLE Customer (
    CustomerSk INT PRIMARY KEY, -- elsődleges kulcs
    Name NVARCHAR(100),
    ContactPerson NVARCHAR(100),
    TaxNumber VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    BillingAddress NVARCHAR(200),
    IsCompany BIT,
    RegistrationDate DATETIME2
);
```

Legyen automatikusan számozva

```sql
CREATE TABLE Customer (
    CustomerSk INT IDENTITY PRIMARY KEY, -- automatikusan számozott elsődleges kulcs
    Name NVARCHAR(100),
    ContactPerson NVARCHAR(100),
    TaxNumber VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    BillingAddress NVARCHAR(200),
    IsCompany BIT,
    RegistrationDate DATETIME2
);
```

## NOT NULL kényszer

A ContactPerson mező kivételével minden mező legyen közelezően kitöltendő

```sql
CREATE TABLE Customer (
    CustomerSk INT IDENTITY PRIMARY KEY, 
    Name NVARCHAR(100) NOT NULL,
    ContactPerson NVARCHAR(100) NULL,
    TaxNumber VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    BillingAddress NVARCHAR(200) NOT NULL,
    IsCompany BIT NOT NULL,
    RegistrationDate DATETIME2 NOT NULL
);
```

> [!note]
> A `NOT NULL` ellentéte a `NULL`, ami viszont engedélyezi az üren mezőket. Nem kell kiírtni, de ha később változtatunk az 'ALTER TABLE" parancsal, szükség lehet rá. 

## UNIQUE kényszer

Az e-mail legyen egyedi

```sql
CREATE TABLE Customer (
    CustomerSk INT IDENTITY PRIMARY KEY, 
    Name NVARCHAR(100) NOT NULL,
    ContactPerson NVARCHAR(100) NULL,
    TaxNumber VARCHAR(50) NOT NULL UNIQUE, -- Egyedi
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE, -- Egyedi
    BillingAddress NVARCHAR(200) NOT NULL,
    IsCompany BIT NOT NULL,
    RegistrationDate DATETIME2 NOT NULL
);
```

> [!note]
> A kényszereket kombinálni is lehet. Az `Email` mezőn van egy `NOT NULL` és egy `UNIQUE` kényszer is beállítva. 

```sql
CREATE TABLE Customer (
    CustomerSk INT IDENTITY PRIMARY KEY, 
    Name NVARCHAR(100) NOT NULL,
    ContactPerson NVARCHAR(100) NULL,
    TaxNumber VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL CONSTRAINT UQ_Customer_Email UNIQUE, -- Egyedi, elnevezett kényszer
    BillingAddress NVARCHAR(200) NOT NULL,
    IsCompany BIT NOT NULL,
    RegistrationDate DATETIME2 NOT NULL
);
```

Egyedi, elnevezett kényszer külön sorban

```sql
CREATE TABLE Customer (
    CustomerSk INT IDENTITY PRIMARY KEY, 
    Name NVARCHAR(100) NOT NULL,
    ContactPerson NVARCHAR(100) NULL,
    TaxNumber VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    BillingAddress NVARCHAR(200) NOT NULL,
    IsCompany BIT NOT NULL,
    RegistrationDate DATETIME2 NOT NULL,
    CONSTRAINT UQ_Customer_Email UNIQUE (Email),
    CONSTRAINT UQ_Customer_TaxNumber UNIQUE (TaxNumber)
);
```

`UNIQUE` kényszer több mezőre:

``` sql
CONSTRAINT UQ_Customer_Email UNIQUE (Email, TaxNumber) 
```

Fenti kódrészlet azt jelenti, hogy az Email és TaxNumber párosának kell egyedinek lennie.
Ezért külön-külön az Email vagy a TaxNumber mezőben lehet ismétlődés, de ugyanaz a páros nem fordulhat elő kétszer. **A mi esetünkben ez így értelmetlen.**

## DEFAULT kényszer

``` sql
...
DATETIME2 RegistrationDate NOT NULL DEFAULT(GETDATE())
...
```

``` sql
...
DATETIME2 RegistrationDate NOT NULL
...
CONSTRAINT DF_Customer_RegistrationDate DEFAULT(GETDATE()) FOR RegistrationDate
...
```

## CHECK kényszer

``` sql
CREATE TABLE Product (
    ProductSk INT PRIMARY KEY,
    EAN CHAR(16),
    ProductName NVARCHAR(50),
    Description NVARCHAR(MAX),
    NetPrice DECIMAL(18,2),
    VatPercent DECIMAL(3),
    GrossPrice DECIMAL(18,2),
    CategoryFk INT
);
```

``` sql
CREATE TABLE Product (
    ProductSk INT PRIMARY KEY,
    EAN CHAR(16),
    ProductName NVARCHAR(50),
    Description NVARCHAR(MAX),
    NetPrice DECIMAL(18,2) CHECK (NetPrice >= 0),
    VatPercent DECIMAL(3) CHECK (VatPercent >= 0),
    GrossPrice DECIMAL(18,2) CHECK (GrossPrice >= 0),
    CategoryFk INT
);
```

A kényszereket ki is lehet emelni

``` sql
CREATE TABLE Product (
    ProductSk INT,
    EAN CHAR(16),
    ProductName NVARCHAR(50),
    Description NVARCHAR(MAX),
    NetPrice DECIMAL(18,2),
    VatPercent DECIMAL(3),
    GrossPrice DECIMAL(18,2),
    CategoryFk INT,
    CONSTRAINT PK_Product PRIMARY KEY (ProductSk),
    CONSTRAINT CHK_Product_NetPrice CHECK (NetPrice >= 0),
    CONSTRAINT CHK_Product_VatPercent CHECK (VatPercent >= 0),
    CONSTRAINT CHK_Product_GrossPrice CHECK (GrossPrice >= 0)
);
```


## FOREIGN KEY kényszer

``` sql
CREATE TABLE Category (
    CategorySk INT PRIMARY KEY,
    CategoryName NVARCHAR(50),
    ParentCategoryFk INT,
    CONSTRAINT FK_Category_Parent FOREIGN KEY (ParentCategoryFk) REFERENCES Category(CategorySk)
);

CREATE TABLE Product (
    ProductSk INT PRIMARY KEY,
    EAN CHAR(16),
    ProductName NVARCHAR(50),
    Description NVARCHAR(MAX),
    NetPrice DECIMAL(18,2),
    VatPercent DECIMAL(3),
    GrossPrice DECIMAL(18,2),
    CategoryFk INT,
    CONSTRAINT FK_Product_Category FOREIGN KEY (CategoryFk) REFERENCES Category(CategorySk)
);
```

## Táblák módisítása

``` SQL
ALTER TABLE Category DROP CONSTRAINT FK_Category_Parent;
```

``` SQL
ALTER TABLE Category
ADD CONSTRAINT FK_Category_Parent FOREIGN KEY (ParentCategoryFk) REFERENCES Category(CategorySk);
```