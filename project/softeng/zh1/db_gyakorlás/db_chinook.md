# "Chinook" mintaadatbázis

A **Chinook adatbázis** egy nyílt forráskódú, mintaadatbázis, amely egy digitális médiabolt működését modellezi. A projekt célja, hogy alternatívát kínáljon a klasszikus **Northwind** adatbázis helyett, és bemutassa az SQL lekérdezések, adatmodellezés és ORM eszközök használatát különböző adatbázis-kezelő rendszerekben. A Chinook adatbázis tartalmazza az előadók, albumok, zeneszámok, vásárlások és ügyfelek adatait, és több mint 15 000 rekordot tartalmaz. [YugabyteDB Docs](https://docs.yugabyte.com/preview/sample-data/chinook/?utm_source=chatgpt.com)

A projekt a [GitHub-on](https://github.com/lerocha/chinook-database?utm_source=chatgpt.com) érhető el, ahol letölthetők az SQL szkriptek különböző adatbázis-kezelő rendszerekhez, például SQL Server, PostgreSQL, MySQL, SQLite és mások.



``` mermaid
erDiagram
%% Relationships
    Album ||--o{ Artist : "ArtistId"
    Customer ||--o{ Employee : "SupportRepId"
    Employee ||--o{ Employee : "ReportsTo"
    Follows ||--o{ Users : "Followed_user_id"
    Follows ||--o{ Users : "Following_user_id"
    Invoice ||--o{ Customer : "CustomerId"
    InvoiceLine ||--o{ Invoice : "InvoiceId"
    InvoiceLine ||--o{ Track : "TrackId"
    PlaylistTrack ||--o{ Playlist : "PlaylistId"
    PlaylistTrack ||--o{ Track : "TrackId"
    Posts ||--o{ Users : "User_id"
    Track ||--o{ Album : "AlbumId"
    Track ||--o{ Genre : "GenreId"
    Track ||--o{ MediaType : "MediaTypeId"
```





``` mermaid
erDiagram
    Artist {
        int ArtistId PK
        nvarchar Name
    }

    Album {
        int AlbumId PK
        nvarchar Title
        int ArtistId FK
    }

    Customer {
        int CustomerId PK
        nvarchar FirstName
        nvarchar LastName
        nvarchar Company
        nvarchar Address
        nvarchar City
        nvarchar State
        nvarchar Country
        nvarchar PostalCode
        nvarchar Phone
        nvarchar Fax
        nvarchar Email
        int SupportRepId FK
    }

    Employee {
        int EmployeeId PK
        nvarchar LastName
        nvarchar FirstName
        nvarchar Title
        int ReportsTo FK
        datetime BirthDate
        datetime HireDate
        nvarchar Address
        nvarchar City
        nvarchar State
        nvarchar Country
        nvarchar PostalCode
        nvarchar Phone
        nvarchar Fax
        nvarchar Email
    }

    Follows {
        int Following_user_id PK,FK
        int Followed_user_id PK,FK
        datetime Created_at
    }

    Genre {
        int GenreId PK
        nvarchar Name
    }

    Invoice {
        int InvoiceId PK
        int CustomerId FK
        datetime InvoiceDate
        nvarchar BillingAddress
        nvarchar BillingCity
        nvarchar BillingState
        nvarchar BillingCountry
        nvarchar BillingPostalCode
        numeric Total
    }

    InvoiceLine {
        int InvoiceLineId PK
        int InvoiceId FK
        int TrackId FK
        numeric UnitPrice
        int Quantity
    }

    MediaType {
        int MediaTypeId PK
        nvarchar Name
    }

    Playlist {
        int PlaylistId PK
        nvarchar Name
    }

    PlaylistTrack {
        int PlaylistId PK,FK
        int TrackId PK,FK
    }

    Posts {
        int ID PK
        varchar Title
        nvarchar Body
        int User_id FK
        bit status
        datetime Created_at
    }

    Track {
        int TrackId PK
        nvarchar Name
        int AlbumId FK
        int MediaTypeId FK
        int GenreId FK
        nvarchar Composer
        int Milliseconds
        int Bytes
        numeric UnitPrice
    }

    Users {
        int ID PK
        varchar Username
        varchar Role
        datetime Created_at
    }

    %% Relationships
    Album ||--o{ Artist : "ArtistId"
    Customer ||--o{ Employee : "SupportRepId"
    Employee ||--o{ Employee : "ReportsTo"
    Follows ||--o{ Users : "Followed_user_id"
    Follows ||--o{ Users : "Following_user_id"
    Invoice ||--o{ Customer : "CustomerId"
    InvoiceLine ||--o{ Invoice : "InvoiceId"
    InvoiceLine ||--o{ Track : "TrackId"
    PlaylistTrack ||--o{ Playlist : "PlaylistId"
    PlaylistTrack ||--o{ Track : "TrackId"
    Posts ||--o{ Users : "User_id"
    Track ||--o{ Album : "AlbumId"
    Track ||--o{ Genre : "GenreId"
    Track ||--o{ MediaType : "MediaTypeId"
```

