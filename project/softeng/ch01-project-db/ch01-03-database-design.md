# 1.3 A rendeléskezelő rendszer adatbázisának tervezése

Ebben a fejezetben végigvezetlek a rendeléskezelő rendszerünk adatbázisának tervezési folyamatán. Az adatbázis tervezése kulcsfontosságú lépés az alkalmazásfejlesztés során, hiszen ez alapozza meg a rendszer hatékony működését és bővíthetőségét. Lépésről lépésre haladunk, hogy egy jól strukturált, normalizált adatbázist hozzunk létre.

## Követelmények meghatározása

### Ügyfelek és termékek kezelése

Az egyik alapvető követelmény, hogy a rendszerünk képes legyen tárolni és kezelni az ügyfelek és termékek adatait. Emellett fontos, hogy nyomon tudjuk követni, hogy ki mit rendelt. Ez a követelmény több részletre bontható:

1. **Ügyféladatok tárolása**: Az ügyfelekről a következő információkat kell tárolnunk:
   - Név
   - Lakcím
   - Elérhetőségek:
     - Mobiltelefonszám
     - E-mail cím

   Ez lehetővé teszi, hogy pontosan azonosítsuk ügyfeleinket, és szükség esetén kapcsolatba léphessünk velük.

2. **Termékinformációk kezelése**: A termékekről tárolt adatok között szerepelnie kell:
   - A termék neve
   - Leírása
   - Ára
   - Készletinformáció (mennyi van raktáron)

3. **Rendelések nyilvántartása**: A rendszernek képesnek kell lennie rögzíteni, hogy melyik ügyfél milyen termékeket rendelt meg.

### Rendelések részletes kezelése

A rendelések kezelésével kapcsolatban további specifikus követelményeket is megfogalmazhatunk:

4. **Többtételes rendelések**: Egy rendelés több különböző tételből (termékből) is állhat. A rendszernek ezt rugalmasan kell kezelnie.

5. **Rendelés szintű kedvezmények**: A kedvezményeket nem tételenként, hanem a teljes rendelésre vonatkozóan kell tudnunk alkalmazni. Ez lehetővé teszi például a nagyobb összegű rendelések utáni kedvezmények egyszerű kezelését.

6. **Tételenkénti adókezelés**: Az adó (ÁFA) mértéke eltérhet az egyes rendelési tételeknél. Ezt a rendszernek rugalmasan kell kezelnie, lehetővé téve például a különböző adókulcsok alkalmazását különböző terméktípusokra.

7. **Aktuális státusz tárolása**: A rendelések státuszát szövegesen szeretnénk tárolni. Négy állapot lehetséges: "Feldolgozás alatt", "Szállítás", "Kiszállítva", "Törölve".

### Termékek kategorizálása és árazása

A termékek kezelésével kapcsolatban további követelményeket is megfogalmazhatunk:

7. **Hierarchikus termékkategorizálás**: A termékeket kategóriákba kell tudnunk sorolni, méghozzá hierarchikus módon. Ez azt jelenti, hogy lehetnek fő kategóriák és alkategóriák is. Például:
   - Elektronika
     - Számítógépek
       - Laptopok
       - Asztali számítógépek
     - Mobiltelefonok

   Ez a struktúra segíti a termékek rendszerezését és a könnyebb kereshetőséget.

8. **Készletnyilvántartás**: Minden termékről nyilván kell tartanunk, hogy mennyi van belőle készleten. Ez segíti a raktárkészlet-menedzsmentet és a rendelések teljesíthetőségének ellenőrzését.

9. **Kettős árnyilvántartás**: A rendszernek képesnek kell lennie külön kezelni:
   - Az aktuális árat: ez az a jelenlegi ár, amelyen a termék megvásárolható
   - A rendelés időpontjában érvényes árat: ez az az ár, amelyen az ügyfél ténylegesen megrendelte a terméket

   Ez a megoldás lehetővé teszi az árak változtatását anélkül, hogy az befolyásolná a már leadott rendelések árképzését.

### Címkezelés

10. **Rugalmas címkezelés**: A rendszernek külön kell tudnia kezelni a különböző címtípusokat:
    - Az ügyfél lakcíme
    - A rendelés szállítási címe (ami eltérhet a lakcímtől)

    Ez lehetővé teszi, hogy az ügyfelek rugalmasan választhassanak szállítási címet minden rendelésnél.

Ezek a követelmények együttesen egy komplex, de rugalmas rendszer alapjait fektetik le. A következő lépésekben ezeket a követelményeket fogjuk lefordítani konkrét adatbázis-struktúrává, táblaszerkezetekké és kapcsolatokká. 

Ne feledd, hogy a jó követelménymeghatározás a sikeres adatbázis-tervezés alapja. Minél pontosabban tudjuk megfogalmazni az igényeinket, annál hatékonyabb és használhatóbb rendszert tudunk majd létrehozni. A következő alfejezetekben lépésről lépésre fogjuk felépíteni az adatbázisunkat ezen követelmények alapján.

## Adatbázis tervezése

**1. feladat:** A követelmények alapján azonosítsd a rendszer főbb entitásait (tábláit). Ha felsoroltad, hasonlítsd össze megoldásodat a javasolt megoldással.

<!--<details>
<summary>Javasolt megoldás</summary>-->

Főbb entitások:

* Ügyfelek
* Termékek
* Rendelések
* Rendelés tételek
* Termékkategóriák
* Címek

<!--</details><br/>-->

**2. feladat:** Az azonosított entitásokhoz határozd meg a szükséges attribútumokat (mezőket). Gondold át, hogy melyik mezők lesznek elsődleges- és idegenkulcsok. Milyen adattípusokat használnál az egyes mezők esetén?



```mermaid
erDiagram  
UGYFEL {
    INT UgyfelID PK
    NVARCHAR(100) Nev
    NVARCHAR(255) Email
    NVARCHAR(20) Telefonszam
    INT AlapertelmezettCimID FK
}

TERMEK {
    INT TermekID PK
    NVARCHAR(100) Nev
    NVARCHAR(MAX) Leiras
    DECIMAL(10_2) AktualisAr
    INT Keszlet
    INT KategoriaID FK
}

TERMEK_KATEGORIA {
    INT KategoriaID PK
    NVARCHAR(50) Nev
    NVARCHAR(MAX) Leiras
    INT SzuloKategoriaID FK   
}

UGYFEL_CIM {
	INT UgyfelID PK
	INT CimID PK
}

CIM {
    INT CimID PK
    NVARCHAR(100) Utca
    NVARCHAR(20) Hazszam
    NVARCHAR(50) Varos
    NVARCHAR(10) Iranyitoszam
    NVARCHAR(50) Orszag
}

RENDELES {
    INT RendelesID PK
    INT UgyfelID FK
    INT SzallitasiCimID FK
    NVARCHAR(20) Statusz
    DATETIME RendelesDatum
    DECIMAL(5_2) Kedvezmeny
    DECIMAL(10_2) Vegosszeg
}

RENDELES_TETEL {
    INT TetelID PK
    INT RendelesID FK
    INT TermekID FK
    INT Mennyiseg
    DECIMAL(10_2) EgysegAr
    DECIMAL(5_2) Afa
    DECIMAL(10_2) NettoAr
    DECIMAL(10_2) BruttoAr
}

UGYFEL ||--o{ RENDELES : "leadja"
RENDELES ||--|{ RENDELES_TETEL : "tartalmaz"
TERMEK ||--o{ RENDELES_TETEL : "szerepel"
TERMEK }|--|| TERMEK_KATEGORIA : "tartozik"
TERMEK_KATEGORIA ||--o{ TERMEK_KATEGORIA : "alkategóriája"
UGYFEL ||--o{ UGYFEL_CIM : ""
CIM ||--o{ UGYFEL_CIM : ""
CIM ||--o{ RENDELES : "szállítási cím"
```

**3. feladat:** A következő megkötések figyelembevételével hozd létre tervező vagy SQL script segítségével az adattáblákat:
* Minden tábla elsődleges kulcsa identitás mező legyen (automatikus számláló, IDENTITY).
* Minden százalékos érték (adó, kedvezmény) 0-100 közötti értéket vehet fel.
* Az **ügyfelek** neve, e-mailje, lakcime nem lehet üres, e-mail egyedi. Címekből nem hiányozhat semmi.
* A **termékek** neve, ára, készlete és kategóriája nem lehet üres. Az ár és a készlet nemnegatív szám. (CHECK (Ar >= 0))
* A **rendelések** dátuma nem lehet üres és alapértelmezetten az aktuális nap (DEFAULT GetDate()). A kedvezmény mértéke nem lehet üres, alapértelmezetten 0. A végösszeg felvehet NULL értéket.
* A **rendelés tételek** esetén egy mező sem lehet üres, illetve a mezők többségében nemnegatív értékeket vehetnek csak fel.

Példa az ügyfél táblára:
```sql
CREATE TABLE UGYFEL (
    UgyfelID INT IDENTITY(1,1) PRIMARY KEY,
    Nev NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    Telefonszam NVARCHAR(20),
    LakcimID INT NOT NULL
);
```

További segítség:
```sql
-- Constraint létrehozása (Kedvezmény legyen 0 és 100 között)
CONSTRAINT CHK_RENDELES_Kedvezmeny CHECK (Kedvezmeny >= 0 AND Kedvezmeny <= 100)

-- Idegenkulcs beállítása
CREATE TABLE TERMEK_KATEGORIA (
    KategoriaID INT IDENTITY(1,1) PRIMARY KEY,
    -- ...
    SzuloKategoriaID INT,
    CONSTRAINT FK_TERMEK_KATEGORIA_SzuloKategoria FOREIGN KEY (SzuloKategoriaID) 
            REFERENCES TERMEK_KATEGORIA(KategoriaID)

-- Alapértelmezett érték beállítása
CREATE TABLE RENDELES (
    -- ...
    RendelesDatum DATETIME NOT NULL DEFAULT GETDATE()
    -- ...
)
```

<!--<details>
<summary>Javasolt megoldás</summary>-->

```sql
-- CIM tábla létrehozása
CREATE TABLE CIM (
    CimID INT IDENTITY(1,1) PRIMARY KEY,
    Utca NVARCHAR(100) NOT NULL,
    Hazszam NVARCHAR(20) NOT NULL,
    Varos NVARCHAR(50) NOT NULL,
    Iranyitoszam NVARCHAR(10) NOT NULL,
    Orszag NVARCHAR(50) NOT NULL
);

-- TERMEK_KATEGORIA tábla létrehozása
CREATE TABLE TERMEK_KATEGORIA (
    KategoriaID INT IDENTITY(1,1) PRIMARY KEY,
    Nev NVARCHAR(50) NOT NULL,
    Leiras NVARCHAR(MAX),
    SzuloKategoriaID INT,
    CONSTRAINT FK_TERMEK_KATEGORIA_SzuloKategoria FOREIGN KEY (SzuloKategoriaID) 
        REFERENCES TERMEK_KATEGORIA(KategoriaID)
);

-- TERMEK tábla létrehozása
CREATE TABLE TERMEK (
    TermekID INT IDENTITY(1,1) PRIMARY KEY,
    Nev NVARCHAR(100) NOT NULL,
    Leiras NVARCHAR(MAX),
    AktualisAr DECIMAL(10,2) NOT NULL,
    Keszlet INT NOT NULL,
    KategoriaID INT,
    CONSTRAINT FK_TERMEK_TERMEK_KATEGORIA FOREIGN KEY (KategoriaID) 
        REFERENCES TERMEK_KATEGORIA(KategoriaID),
    CONSTRAINT CHK_TERMEK_AktualisAr CHECK (AktualisAr >= 0),
    CONSTRAINT CHK_TERMEK_Keszlet CHECK (Keszlet >= 0)
);

-- UGYFEL tábla létrehozása
CREATE TABLE UGYFEL (
    UgyfelID INT IDENTITY(1,1) PRIMARY KEY,
    Nev NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    Telefonszam NVARCHAR(20),
    LakcimID INT,
    CONSTRAINT FK_UGYFEL_CIM FOREIGN KEY (LakcimID) 
        REFERENCES CIM(CimID),
    CONSTRAINT UQ_UGYFEL_Email UNIQUE (Email)
);

-- RENDELES tábla létrehozása
CREATE TABLE RENDELES (
    RendelesID INT IDENTITY(1,1) PRIMARY KEY,
    UgyfelID INT NOT NULL,
    SzallitasiCimID INT NOT NULL,
    RendelesDatum DATETIME NOT NULL DEFAULT GETDATE(),
    Statusz NVARCHAR(20) NOT NULL,
    Kedvezmeny DECIMAL(5,2) NOT NULL DEFAULT 0,
    Vegosszeg DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_RENDELES_UGYFEL FOREIGN KEY (UgyfelID) 
        REFERENCES UGYFEL(UgyfelID),
    CONSTRAINT FK_RENDELES_CIM FOREIGN KEY (SzallitasiCimID) 
        REFERENCES CIM(CimID),
    CONSTRAINT CHK_RENDELES_Kedvezmeny CHECK (Kedvezmeny >= 0 AND Kedvezmeny <= 100),
    CONSTRAINT CHK_RENDELES_Vegosszeg CHECK (Vegosszeg >= 0)
);

-- RENDELES_TETEL tábla létrehozása
CREATE TABLE RENDELES_TETEL (
    TetelID INT IDENTITY(1,1) PRIMARY KEY,
    RendelesID INT NOT NULL,
    TermekID INT NOT NULL,
    Mennyiseg INT NOT NULL,
    EgysegAr DECIMAL(10,2) NOT NULL,
    Afa DECIMAL(5,2) NOT NULL,
    NettoAr DECIMAL(10,2) NOT NULL,
    BruttoAr DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_RENDELES_TETEL_RENDELES FOREIGN KEY (RendelesID) 
        REFERENCES RENDELES(RendelesID),
    CONSTRAINT FK_RENDELES_TETEL_TERMEK FOREIGN KEY (TermekID) 
        REFERENCES TERMEK(TermekID),
    CONSTRAINT CHK_RENDELES_TETEL_Mennyiseg CHECK (Mennyiseg > 0),
    CONSTRAINT CHK_RENDELES_TETEL_EgysegAr CHECK (EgysegAr >= 0),
    CONSTRAINT CHK_RENDELES_TETEL_Afa CHECK (Afa >= 0 AND Afa <= 100),
    CONSTRAINT CHK_RENDELES_TETEL_NettoAr CHECK (NettoAr >= 0),
    CONSTRAINT CHK_RENDELES_TETEL_BruttoAr CHECK (BruttoAr >= 0)
);
```
<!--</details><br/>-->