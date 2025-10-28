# "Pets" mintaadatbázis

🅐 Az adatbázist felépítő sql mondatok letölthetők innen, ha saját szerveren, vagy lokálisan szeretnéd felépíteni az adatbázist: [se_pest.sql](se_pest.sql) 

🅑 Ha az egyetemi szerveren lévő változatot használnád:

```powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=se_pets;User ID=hallgato;Password=Password123;Encrypt=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models

```

> [!WARNING]
>
> Az bit.uni-corvinus.hu csak VPN alól érhető el! 



``` mermaid
erDiagram
    %% Relationships
    Animal }o--|| Owner : "belongs to"
    Animal }o--|| Species : "is type of"
    Owner }o--|| Locality : "located in"
    Treatment }o--|| Animal : "for"
    ProcedureDone }o--|| Treatment : "performed during"
    ProcedureDone }o--|| Procedure : "executes"
```





``` mermaid
erDiagram

    Animal {
        int AnimalSK PK
        nvarchar Name
        int OwnerFK FK
        smallint BirthYear
        int SpeciesFK FK
    }

    Owner {
        int OwnerSK PK
        nvarchar Name
        int LocalityFK FK
    }

    Locality {
        int LocalitySK PK
        nvarchar Name
    }

    Species {
        int SpeciesSK PK
        nvarchar Name
    }

    Procedure {
        int ProcedureSK PK
        nvarchar Name
        nvarchar Unit
        money Price
    }

    Treatment {
        int TreatmentSK PK
        int AnimalFK FK
        date Date
        bit Paid
    }

    ProcedureDone {
        int ProcedureDoneSK PK
        int TreatmentFK FK
        int ProcedureFK FK
    }

    %% Relationships
    Animal }o--|| Owner : "belongs to"
    Animal }o--|| Species : "is type of"
    Owner }o--|| Locality : "located in"
    Treatment }o--|| Animal : "for"
    ProcedureDone }o--|| Treatment : "performed during"
    ProcedureDone }o--|| Procedure : "executes"

```

