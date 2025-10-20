# Esettanulmány megoldás - táblák létrehozása

``` mermaid
erDiagram
    ServiceType {
        int ServiceTypeId PK
        varchar Name
    }

    Service {
        int ServiceId PK
        varchar Name
        decimal Price
        int ServiceTypeId FK
    }

    Client {
        int ClientId PK
        varchar Name
        varchar City
        varchar Country
        varchar PostalCode
        varchar Address
        varchar Email
        varchar Phone
    }

    ClientService {
        int ClientId FK
        int ServiceId FK
        date ValidFrom
        date ValidTo
        int Interval
    }

    Staff {
        int StaffId PK
        varchar Name
        varchar City
        varchar Country
        varchar PostalCode
        varchar Address
        varchar Email
        varchar Phone
    }

    Invoice {
        int InvoiceId PK
        date Date
        date DueDate
        decimal DiscountValue
        int ClientId FK
        int StaffId FK
    }

    Payment {
        int PaymentId PK
        decimal Amount
        int ClientId FK
        int InvoiceId FK
        int StaffId FK
    }

    InvoiceLine {
        int InvoiceLineId PK
        int ServiceId FK
        int InvoiceId FK
        decimal UnitPrice
        decimal Quantity
        decimal Vat
    }

    %% Kapcsolatok
    ServiceType ||--o{ Service : "has"
    Service ||--o{ ClientService : "used by"
    Client ||--o{ ClientService : "uses"
    Client ||--o{ Invoice : "receives"
    Staff ||--o{ Invoice : "issues"
    Client ||--o{ Payment : "makes"
    Invoice ||--o{ Payment : "paid by"
    Staff ||--o{ Payment : "processed by"
    Invoice ||--o{ InvoiceLine : "contains"
    Service ||--o{ InvoiceLine : "billed as"

```





``` sql
SET NOCOUNT ON;

DROP TABLE IF EXISTS InvoiceLine;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Invoice;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS ClientService;
DROP TABLE IF EXISTS Service;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS ServiceType;
GO

-- ===============================
-- ServiceType
-- ===============================
CREATE TABLE ServiceType (
    ServiceTypeId INT NOT NULL IDENTITY PRIMARY KEY,
    Name VARCHAR(300) NOT NULL
);

-- ===============================
-- Service
-- ===============================
CREATE TABLE Service (
    ServiceId INT NOT NULL IDENTITY PRIMARY KEY,
    Name VARCHAR(300) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    ServiceTypeId INT NOT NULL 
        FOREIGN KEY REFERENCES ServiceType(ServiceTypeId)
);

-- ===============================
-- Client
-- ===============================
CREATE TABLE Client (
    ClientId INT NOT NULL IDENTITY PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    PostalCode VARCHAR(10) NOT NULL,
    Address VARCHAR(300) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(50)
);

-- ===============================
-- ClientService
-- ===============================
CREATE TABLE ClientService (
    ServiceId INT NOT NULL 
        FOREIGN KEY REFERENCES Service(ServiceId),
    ClientId INT NOT NULL 
        FOREIGN KEY REFERENCES Client(ClientId),
    ValidFrom DATE NOT NULL,
    ValidTo DATE NULL,
    Interval INT NOT NULL,
    CONSTRAINT PK_ClientService PRIMARY KEY (ClientId, ServiceId)
);

-- ===============================
-- Staff
-- ===============================
CREATE TABLE Staff (
    StaffId INT NOT NULL IDENTITY PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    PostalCode VARCHAR(10) NOT NULL,
    Address VARCHAR(300) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(50)
);

-- ===============================
-- Invoice
-- ===============================
CREATE TABLE Invoice (
    InvoiceId INT NOT NULL PRIMARY KEY,
    Date DATE NOT NULL,
    DueDate DATE NOT NULL,
    DiscountValue DECIMAL(10,2),
    ClientId INT NOT NULL 
        FOREIGN KEY REFERENCES Client(ClientId),
    StaffId INT NOT NULL 
        FOREIGN KEY REFERENCES Staff(StaffId)
);

-- ===============================
-- Payment
-- ===============================
CREATE TABLE Payment (
    PaymentId INT NOT NULL IDENTITY PRIMARY KEY,
    Amount DECIMAL(10,2) NOT NULL,
    ClientId INT NOT NULL 
        FOREIGN KEY REFERENCES Client(ClientId),
    InvoiceId INT NOT NULL 
        FOREIGN KEY REFERENCES Invoice(InvoiceId),
    StaffId INT NOT NULL 
        FOREIGN KEY REFERENCES Staff(StaffId)
);

-- ===============================
-- InvoiceLine
-- ===============================
CREATE TABLE InvoiceLine (
    InvoiceLineId INT NOT NULL IDENTITY PRIMARY KEY,
    ServiceId INT NOT NULL 
        FOREIGN KEY REFERENCES Service(ServiceId),
    InvoiceId INT NOT NULL 
        FOREIGN KEY REFERENCES Invoice(InvoiceId),
    UnitPrice DECIMAL(10,2) NOT NULL,
    Quantity DECIMAL(10,2) NOT NULL,
    Vat DECIMAL(2,2)
);
GO

```

