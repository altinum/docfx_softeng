# 1.4 Adatbázis feltöltése szintetikus adatokkal

Az adatbázisod struktúrájának kialakítása után a következő lépés, hogy feltöltsd azt tesztadatokkal. Egyelőre csak a *cím*, az *ügyfél*, a *termék kategória* és a *termék* táblákat szeretnénk feltölteni, a rendelések rögzítésére a Windows Forms alkalmazásunkat fogjuk használni.
A szintetikus adatok generálása azonban időigényes feladat lehet, különösen, ha sok táblád van, vagy nagy mennyiségű adatra van szükséged. Szerencsére a ChatGPT segítségével jelentősen felgyorsíthatod ezt a folyamatot. Lássuk, hogyan!

### 1. lépés: Adatgenerálási terv készítése

Mielőtt elkezdenéd az adatok generálását, készíts egy tervet. Határozd meg:

- Milyen sorrendben fogod feltölteni a táblákat (a külső kulcs kapcsolatok miatt)
- Hány rekordot szeretnél generálni minden táblába
- Milyen speciális követelményeid vannak az adatokra vonatkozóan (pl. egyedi értékek, értéktartományok)

<details>
<summary>Javasolt sorrend</summary>

1. CIM
2. UGYFEL
3. TERMEK_KATEGORIA
4. TERMEK


</details>

### 2. lépés: ChatGPT prompt összeállítása

Most, hogy megvan a terved, összeállíthatod a promptot a ChatGPT számára. Egy jó prompt tartalmazza:

- Az adatbázis struktúráját (táblanév, mezőnevek, adattípusok)
- A generálandó rekordok számát
- Bármilyen speciális követelményt vagy korlátozást
- A kívánt kimeneti formátumot (pl. SQL INSERT utasítások)

Íme egy példa prompt a CIM táblához:

```
Kérlek, generálj 100 rekordnyi szintetikus adatot a CIM táblához az alábbi struktúra alapján:

CREATE TABLE CIM (
    CimID INT IDENTITY(1,1) PRIMARY KEY,
    Utca NVARCHAR(100) NOT NULL,
    Hazszam NVARCHAR(20) NOT NULL,
    Varos NVARCHAR(50) NOT NULL,
    Iranyitoszam NVARCHAR(10) NOT NULL,
    Orszag NVARCHAR(50) NOT NULL
);

Követelmények:
- Az utcanevek legyenek változatosak és valósághűek
- A házszámok lehetnek számok vagy betű-szám kombinációk
- A városnevek legyenek valós magyar városnevek
- Az irányítószámok feleljenek meg a magyar formátumnak (4 számjegy)
- Az ország legyen "Magyarország" minden rekordnál

Kérlek, a kimenet SQL INSERT utasítások formájában legyen, például:

INSERT INTO CIM (Utca, Hazszam, Varos, Iranyitoszam, Orszag) 
VALUES ('Petőfi Sándor utca', '15', 'Budapest', '1052', 'Magyarország');
```

### 3. lépés: Adatok generálása ChatGPT-vel

Küldd el a promptot a ChatGPT-nek, és várd meg a válaszát. A ChatGPT általában gyorsan és pontosan teljesíti az ilyen kéréseket. Ha nem vagy elégedett az eredménnyel, vagy további adatokra van szükséged, nyugodtan kérheted, hogy generáljon többet vagy változtasson valamit.

### 4. lépés: Az adatok ellenőrzése és tisztítása

Bár a ChatGPT általában jó minőségű adatokat generál, mindig érdemes ellenőrizni az eredményt. Nézd át a generált SQL utasításokat, és figyelj az alábbiakra:

- Vannak-e szintaktikai hibák az SQL-ben?
- Megfelelnek-e az adatok a megadott követelményeknek?
- Vannak-e ismétlődő vagy nyilvánvalóan hibás értékek?

Ha hibákat találsz, javítsd ki őket manuálisan, vagy kérd meg a ChatGPT-t, hogy generáljon új adatokat a problémás részekre.

### 5. lépés: Adatok importálása az adatbázisba

Most, hogy megvannak a tisztított INSERT utasításaid, importálhatod az adatokat az adatbázisodba. Ezt megteheted közvetlenül az SQL Server Management Studio (SSMS) Query Editorában, vagy ha nagyobb mennyiségű adatról van szó, használhatsz SQL script fájlt.

1. Nyisd meg az SSMS-t és csatlakozz az adatbázisodhoz.
2. Nyiss egy új Query ablakot.
3. Másold be a generált és ellenőrzött INSERT utasításokat.
4. Futtasd a scriptet a "Execute" gombra kattintva vagy az F5 billentyű megnyomásával.

### 6. lépés: Ellenőrzés és iteráció

Miután importáltad az adatokat, futtass néhány SELECT utasítást, hogy megbizonyosodj arról, minden rendben ment-e. Például:

```sql
SELECT TOP 10 * FROM CIM;
SELECT COUNT(*) FROM CIM;
```

Ha bármilyen problémát észlelsz, vagy úgy érzed, hogy több adatra van szükséged, ismételd meg a folyamatot.

### 7. lépés: A többi tábla feltöltése

Ismételd meg a 2-6. lépéseket a többi táblára is, a korábban meghatározott sorrendben. Ne feledd, hogy a külső kulcsoknak már létező értékekre kell hivatkozniuk, ezért fontos a megfelelő sorrend betartása.

### Példa a TERMEK tábla feltöltésére:

```
Kérlek, generálj 50 rekordnyi szintetikus adatot a TERMEK táblához az alábbi struktúra alapján:

CREATE TABLE TERMEK (
    TermekID INT IDENTITY(1,1) PRIMARY KEY,
    Nev NVARCHAR(100) NOT NULL,
    Leiras NVARCHAR(MAX),
    AktualisAr DECIMAL(10,2) NOT NULL,
    Keszlet INT NOT NULL,
    KategoriaID INT
);

Követelmények:
- A terméknevek legyenek változatosak és valósághűek
- A leírások legyenek 1-2 mondatosak
- Az árak 1000 és 500000 Ft között legyenek
- A készlet 0 és 1000 között legyen
- A KategoriaID 1 és 10 között legyen (feltételezve, hogy már léteznek kategóriák)

Kérlek, a kimenet SQL INSERT utasítások formájában legyen.
```

### Összefoglalás

A szintetikus adatok generálása a ChatGPT segítségével jelentősen leegyszerűsíti és felgyorsítja az adatbázisod feltöltését tesztadatokkal. Ez a módszer lehetővé teszi, hogy gyorsan létrehozz egy realisztikus adatkészletet az alkalmazásod fejlesztéséhez és teszteléséhez. 

Ne feledd, hogy bár a ChatGPT által generált adatok általában jó minőségűek, mindig érdemes átnézni és szükség esetén finomítani őket, hogy tökéletesen megfeleljenek a projektedben igényeidnek.

Miután feltöltötted az adatbázisodat szintetikus adatokkal, készen állsz arra, hogy elkezdd fejleszteni a rendeléskezelő alkalmazásod többi részét, tudva, hogy reális adatokkal dolgozol majd a fejlesztés és tesztelés során.

[Javasolt megoldás (script a fenti struktúrához)](insert_script.sql)