# "Cocktail" mintaadatbázis

🅐 Az adatbázist felépítő sql mondatok letölthetők innen, ha saját szerveren, vagy lokálisan szeretnéd felépíteni az adatbázist: [se_bikestore.sql](se_bikestore.sql) 

🅑 Ha az egyetemi szerveren lévő változatot használnád:

```powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=se_bikestore;User ID=hallgato;Password=Password123;Encrypt=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models
```

> [!WARNING]
>
> Az bit.uni-corvinus.hu csak VPN alól érhető el! 



``` mermaid
erDiagram
    Cocktail ||--o{ Recipe : "uses"
    Material ||--o{ Recipe : "included in"
    Type ||--o{ Cocktail : "is typed as"
    Type ||--o{ Material : "is typed as"
    Unit ||--o{ Material : "measured in"
    MaterialType ||--o{ Material : "classified as"
```





``` mermaid
erDiagram
    Cocktail {
        int CocktailSK PK
        nvarchar Name
        tinyint TypeFK FK
        smallmoney Price
    }

    Material {
        smallint MaterialID PK
        nvarchar Name
        tinyint TypeFK FK
        tinyint UnitFK FK
        smallmoney Price
    }

    MaterialType {
        tinyint MaterialTypeID PK
        nvarchar Name
    }

    Recipe {
        int RecipeSK PK
        int CocktailFK FK
        smallint MaterialFK FK
        decimal Quantity
    }

    Type {
        tinyint TypeID PK
        nvarchar Name
    }

    Unit {
        tinyint UnitID PK
        nvarchar Name
    }

    Cocktail ||--o{ Recipe : "uses"
    Material ||--o{ Recipe : "included in"
    Type ||--o{ Cocktail : "is typed as"
    Type ||--o{ Material : "is typed as"
    Unit ||--o{ Material : "measured in"
    MaterialType ||--o{ Material : "classified as"
```

