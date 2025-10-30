# "Étkeztetés" mintaadatbázis

## Az adatbázis elérése

Ez az adatbázis már szerepelt előadáson. Érdemes lehet egyénileg felépíteni a mintafeladatot!

🅐 Az adatbázist felépítő sql mondatok letölthetők innen, ha saját szerveren, vagy lokálisan szeretnéd felépíteni az adatbázist: [se_etkeztetes.sql](se_etkeztetes.sql) 

🅑 Ha az egyetemi szerveren lévő változatot használnád:

```powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=Etkeztetes;User ID=hallgato;Password=Password123;Trust Server Certificate=True" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -Context ReceptContext -NoPluralize
```

A `-NoPluralize` kapcsoló segít a magyar nyelvű táblanevek kezelésében: nem teszi őket többesszámba a `Scaffold-DbContext`. Például nem lesz `context.Fogasoks` a `Fogasok` táblából. 

> [!WARNING]
>
> Az bit.uni-corvinus.hu csak VPN alól érhető el! 

> [!IMPORTANT]
>
> Az adatbázisban szereplő táblanevek nem követendő példák, annak illusztrálására szolgálnak, hogy a gyakorlatban "örökölhetünk" régi, más elnevezési konvenciók mentén felépített adatbázisokat. 

## Mit érdemes gyakorolni?

A 6. előadáson bemutatott mintafeladatot érdemes felépíteni, melynek lépései felkerültek a honlapra is. 

## Az adatbázis sémája

``` mermaid
erDiagram

    Fogasok {
        int FogasID PK
        nvarchar FogasNev
        image Kep
        nvarchar Leiras
    }

    MennyisegiEgysegek {
        int MennyisegiEgysegID PK
        nvarchar EgysegNev
    }

    Nyersanyagok {
        int NyersanyagID PK
        nvarchar NyersanyagNev
        int MennyisegiEgysegID FK
        money Egysegar
    }

    Receptek {
        int ReceptID PK
        int FogasID FK
        int NyersanyagID FK
        float Mennyiseg_4fo
    }

    Fogasok ||--o{ Receptek : "FogasID"
    Nyersanyagok ||--o{ Receptek : "NyersanyagID"
    MennyisegiEgysegek ||--o{ Nyersanyagok : "MennyisegiEgysegID"
```

