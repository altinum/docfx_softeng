# "Tamulmányi" mintaadatbázis

Adatbázis valós feladaton alapul, egy időben a Számítástudományi Tanszék ennek az adatbázisnak a segítségével osztotta be az oktatókat az órákra. A tárgyak és az oktatók neveit a mintapéldában lecseréltük. Érdemes megjegyezni, hogy az óra tábla csak idegen kulcsokat tartalmaz a saját kulcsa mellett. 

🅐 Az adatbázist felépítő sql mondatok letölthetők innen, ha saját szerveren, vagy lokálisan szeretnéd felépíteni az adatbázist: [se_tanulmanyi.sql](se_tanulmanyi.sql) 

🅑 Ha az egyetemi szerveren lévő változatot használnád:

```powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=tanulmanyi;User ID=hallgato;Password=Password123;Trust Server Certificate=True" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -Context ReceptContext -NoPluralize
```

A `-NoPluralize` kapcsoló segít a magyar nyelvű táblanevek kezelésében: nem teszi őket többesszámba a `Scaffold-DbContext`. Például nem lesz `context.Fogasoks` a `Fogasok` táblából. 

> [!WARNING]
>
> Az bit.uni-corvinus.hu csak VPN alól érhető el! 



``` mermaid
erDiagram

    Beosztas {
        int beosztas_id PK
        nvarchar beosztasnev
        int elvart
    }

    Nap {
        int nap_id PK
        nvarchar nap
    }

    Status {
        int Skod PK
        nvarchar Status
    }

    Sav {
        int Sav_id PK
        nvarchar Sav
        nvarchar Idopont
    }

    Tantargy {
        int Tkod PK
        nvarchar Tantargynev
        int Tantargyfelelos
        nvarchar Tantargykod
        int Kredit
    }

    Terem {
        int Tkod PK
        nvarchar Terem
    }

    Oktato {
        int oktato_id PK
        nvarchar nev
        nvarchar titulus
        int beosztas FK
        int status FK
    }

    Ora {
        int ora_id PK
        int tanar FK
        int nap FK
        int Sav FK
        int targy FK
        int terem FK
    }

    Beosztas ||--o{ Oktato : "beosztas"
    Status ||--o{ Oktato : "status"

    Oktato ||--o{ Ora : "tanar"
    Nap ||--o{ Ora : "nap"
    Sav ||--o{ Ora : "Sav"
    Tantargy ||--o{ Ora : "targy"
    Terem ||--o{ Ora : "terem"

```

