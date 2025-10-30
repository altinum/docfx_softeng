# "Pets" mintaadatbázis

## Az adatbázis elérése

🅐 Az adatbázist felépítő sql mondatok letölthetők innen, ha saját szerveren, vagy lokálisan szeretnéd felépíteni az adatbázist: [se_pest.sql](se_pest.sql) 

🅑 Ha az egyetemi szerveren lévő változatot használnád:

```powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=se_pets;User ID=hallgato;Password=Password123;Encrypt=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models

```

> [!WARNING]
>
> Az bit.uni-corvinus.hu csak VPN alól érhető el! 

## Mit érdemes gyakorolni?

❶ Jelenítsd meg egy `ListBox`-ban a tulajdonosok neveit az `Owner` tábla alapján. A lista legyen szövegdobozban keresztül szűrhető!

❷ A tulajdonosok mellett egy másik `ListBox`-ban jelenjenek meg az éppen kiválasztott tulajdonos állatai az `Animal` tábla adatai alapján. 

❸ Állatokat tartalmazó lista alatt jelenítsd meg, hogy az éppen kiválasztott állat milyen fajba tartozik.

❹ Az állatokat tartalmazó lista mellett jelen is meg egy újabb `ListBox`-ot, Melyben az éppen kiválasztott állathoz tartozó kezeléseket jelennek meg.

❺ Készíts gombot mellyel új kezelést lehet létrehozni az aznapi dátummal!

❻ A kezeléseket tartozó listbox mellett jelenítsd meg, hogy a kiválasztott kezelés alkalmával milyen beavatkozásokat végeztek el.

❼ A következő lépésben tedd lehetővé új beavatkozások felvételét és törlését az éppen kiválasztott kezeléshez. Ehhez szükséged lesz még egy listára mely az elvégezhető kezeléseket tartalmazza, valamint egy hozzáadás és egy törlés gombra.



## Az adatbázis sémája



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

