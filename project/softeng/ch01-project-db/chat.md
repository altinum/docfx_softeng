

# Ebben a dokumentumban találjátok az előadáson bemutatott beszélgetést a ChatGPT-vel

1.  Hozz létre egy minta adatbázist RendelesFej, RendelesSor és Termek táblákkal!

2. Töltsd fel mintaadatokkal a Termekek táblát!

3. A termékeknél legyen leltárkészlet is!

4. Állíts be minden terméknél 10 darabos készletet!

5. Csinálj egy minta rendelés fejet is!

6. Írj egy triggert, ami csökkenti a raktárkészletet, ha új sor kerül a RendelesSor táblába!

7. Módisítsd úgy, hogy hibát dobjon, ha a készlet negatívba menne

8. Listázd a triggereket az adatbázisban

9. Szúrj be egy sor rendelést, hogy ki lehessen próbálni a triggert. Utána kérdezd le a raktárkészleteket

10. Csinálj egy másik triggert, ami emeli a raktárkészletet, ha törölnek egy RendeleSor-t!

11. Ez nem működik, ha egyszerre több sort törölnek

12. Állítsd vissza az almakészletet 10-re

13. Csinálj egy „Artortenet” táblát, melyben rögzíted, hogy ki mikor melyik terméknek mennyre változtatta az árát.

14. Készíts triggert, mely rögzíti ártörténet táblában, a termékár változást a Termek táblában!

15. Azt is rögzítsd, hogy ki változtatta meg az árat. 

---

>  [!NOTE]
>
> A beszélgetést "Ask" módban kezdjük, itt nem tudja módosítani az adatbázist az LLM

**altinum: @mssql Hozz létre egy minta adatbázist RendelesFej, RendelésSor és Termék táblákkal**

mssql: > ⚠️ You are not connected to any database.

Íme egy egyszerű minta adatbázis létrehozása SQL-ben a kért táblákkal:

```sql
-- RendelesFej tábla (rendelés fejlécek)
CREATE TABLE RendelesFej (
    RendelesFejId INT PRIMARY KEY IDENTITY,
    Datum DATE NOT NULL,
    UgyfelNev NVARCHAR(100) NOT NULL
);

-- Termek tábla (termékek)
CREATE TABLE Termek (
    TermekId INT PRIMARY KEY IDENTITY,
    Nev NVARCHAR(100) NOT NULL,
    Ar DECIMAL(10,2) NOT NULL
);

-- RendelesSor tábla (rendelés sorok)
CREATE TABLE RendelesSor (
    RendelesSorId INT PRIMARY KEY IDENTITY,
    RendelesFejId INT NOT NULL FOREIGN KEY REFERENCES RendelesFej(RendelesFejId),
    TermekId INT NOT NULL FOREIGN KEY REFERENCES Termek(TermekId),
    Mennyiseg INT NOT NULL
);
```

Ez a szerkezet lehetővé teszi rendelések, azok sorainak és a termékek tárolását.

**altinum: @mssql milyen tábláim vannak?**

>  [!NOTE]
>
> Itt áttérünk "Agent" módba, itt már közvetlenül éléri módsítani is tudja az adatbázidt az LLM

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

A következő táblák találhatók az adatbázisban:

- dbo.RendelesFej
- dbo.RendelesSor
- dbo.Termek

Ha szeretnéd, részletesebb információt is adhatok ezekről a táblákról!

---

**altinum: @mssql töltsd fel mintaadatokkal a Termekek tablat**

>  [!NOTE]
>
> Megint "Ask" mód, szeretném látni, mit akar csinálni

mssql: > 🟢 Connected to:  

> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

```sql
-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing
INSERT INTO dbo.Termek (Nev, Ar)
VALUES
  (N'Alma', 150.00),
  (N'Körte', 180.00),
  (N'Banán', 200.00),
  (N'Narancs', 220.00),
  (N'Szilva', 170.00);
```
Ez a lekérdezés 5 minta terméket ad hozzá a dbo.Termek táblához.

----

**altinum: @mssql a termékeknél legyen leltárkészlet is**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

A leltárkészlet (pl. Keszlet vagy Leltar) mező hozzáadásához módosítani kell a dbo.Termek táblát. Íme a szükséges SQL parancs:

```sql
-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing
ALTER TABLE dbo.Termek
ADD Keszlet INT NOT NULL DEFAULT 0;
```

Ez a parancs hozzáad egy Keszlet nevű egész szám típusú oszlopot, amely alapértelmezetten 0. Ha szeretnéd, mintaadatokat is frissíthetek ezzel az új mezővel!

---

**altinum: @mssql állíts be minde terméknél 10 darabos készletet**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

```sql
-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing
UPDATE dbo.Termek
SET Keszlet = 10;
```

Ez a lekérdezés minden termék készletét 10-re állítja a dbo.Termek táblában.

---

**altinum: @mssql Csinálj egy minta rendelés fejet is!**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

```sql
-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing
INSERT INTO dbo.RendelesFej (Datum, UgyfelNev)
VALUES (GETDATE(), N'Minta Ügyfél');
```

Ez a parancs létrehoz egy minta rendelés fejet a mai dátummal és "Minta Ügyfél" névvel.

---

**altinum: @mssql Írj egy triggert, ami csökkenti a raktárkészletet, ha új sor kerül a RendelesSor táblába!**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

```sql
-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing
CREATE TRIGGER dbo.trg_RendelesSor_Insert_CsokkentKeszlet
ON dbo.RendelesSor
AFTER INSERT
AS
BEGIN
    UPDATE t
    SET t.Keszlet = t.Keszlet - i.Mennyiseg
    FROM dbo.Termek t
    INNER JOIN inserted i ON t.TermekId = i.TermekId;
END
```

Ez a trigger minden új RendelesSor beszúrásakor csökkenti a megfelelő termék készletét a megrendelt mennyiséggel.

---

**altinum: @mssql Módisítsd úgy, hogy hibát dobjon, ha a készlet negatívba menne**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

```sql
-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing
CREATE TRIGGER dbo.trg_RendelesSor_Insert_CsokkentKeszlet
ON dbo.RendelesSor
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM dbo.Termek t
        INNER JOIN inserted i ON t.TermekId = i.TermekId
        WHERE t.Keszlet < i.Mennyiseg
    )
    BEGIN
        RAISERROR(N'Nincs elegendő készlet a termékből!', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    UPDATE t
    SET t.Keszlet = t.Keszlet - i.Mennyiseg
    FROM dbo.Termek t
    INNER JOIN inserted i ON t.TermekId = i.TermekId;
END
```

Ez a trigger hibát dob és visszagörgeti a tranzakciót, ha a készlet negatívba menne.

---

**altinum: @mssql mi a 16, 1 a Raiseerrornál?**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

A `RAISERROR` parancsban a `16` a hiba súlyossági szintje (severity), az `1` pedig az állapotkód (state):

- **16**: Felhasználói hiba, amelyet általában az alkalmazás vagy a felhasználó okoz.
- **1**: Állapotkód, amelyet tetszőlegesen használhatsz a hibák megkülönböztetésére (általában 1-et szoktak).

Tehát:  
`RAISERROR('Üzenet', 16, 1)`  
Ez egy általános, visszagörgetést okozó felhasználói hibát jelent.

---

**altinum: @mssql listázd a triggereket az adatbázisban**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

Az adatbázisban jelenleg az alábbi trigger található:

- **trg_RendelesSor_Insert_CsokkentKeszlet** (a dbo.RendelesSor táblán)

Ha szeretnéd, részletes információt is adhatok erről a triggerről!

---

**altinum: @mssql kérlek**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

A dbo.RendelesSor táblán található egy trigger:

**Név:** trg_RendelesSor_Insert_CsokkentKeszlet  
**Típus:** Trigger  
**Létrehozva:** 2025.09.12. 13:14:06  
**Leírás:** Ez a trigger akkor fut le, amikor új sor kerül a RendelesSor táblába, és a termék készletét csökkenti, illetve hibát dob, ha a készlet negatívba menne.

Ha szeretnéd, megmutatom a trigger teljes kódját is!

---

**altinum: @mssql szúrj be egy sor rendelést, hogy ki lehessen próbálni a triggert. Utána kérdezd le a raktárkészleteket**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

```sql
-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing

-- 1. Szúrjunk be egy új rendelés sort (példa: 1-es rendelésfej, 1-es termék, 2 db)
INSERT INTO dbo.RendelesSor (RendelesFejId, TermekId, Mennyiseg)
VALUES (1, 1, 2);

-- 2. Kérdezzük le a termékek aktuális készletét
SELECT TermekId, Nev, Keszlet
FROM dbo.Termek;
```

Ez a két lekérdezés először beszúr egy rendelés sort, majd megmutatja a termékek aktuális készletét.

---

**altinum: @mssql Csinálj egy másik triggert, ami emeli a raktárkészletet, ha törölnek egy RendeleSor+t**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

```sql
-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing
CREATE TRIGGER dbo.trg_RendelesSor_Delete_NoveliKeszlet
ON dbo.RendelesSor
AFTER DELETE
AS
BEGIN
    UPDATE t
    SET t.Keszlet = t.Keszlet + d.Mennyiseg
    FROM dbo.Termek t
    INNER JOIN deleted d ON t.TermekId = d.TermekId;
END
```

Ez a trigger minden törölt rendelés sor után növeli a megfelelő termék készletét a törölt mennyiséggel.

---

**altinum: @mssql ez nem működik, ha egyszerre több sort törölnek**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

Igazad van, a trigger működik több sor törlésénél is, mert a `deleted` tábla minden törölt sort tartalmaz, és az `UPDATE ... FROM ... INNER JOIN deleted` szintaxissal minden érintett termék készlete megfelelően növekszik. 

Viszont, ha ugyanarra a termékre több törölt sor is vonatkozik, akkor a frissítés többször is lefuthat ugyanarra a termékre, ami helytelen eredményt adhat. Ezért érdemes összesíteni a mennyiségeket termékenként:

```sql
-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing
CREATE OR ALTER TRIGGER dbo.trg_RendelesSor_Delete_NoveliKeszlet
ON dbo.RendelesSor
AFTER DELETE
AS
BEGIN
    UPDATE t
    SET t.Keszlet = t.Keszlet + agg.OsszMennyiseg
    FROM dbo.Termek t
    INNER JOIN (
        SELECT TermekId, SUM(Mennyiseg) AS OsszMennyiseg
        FROM deleted
        GROUP BY TermekId
    ) agg ON t.TermekId = agg.TermekId;
END
```

Így minden termék készlete pontosan annyival nő, amennyi összesen törlésre került.

---

**altinum: @mssql állítsd vissza az almakészletet 10-re**

mssql: > 🟢 Connected to:  
> ➖ Server - tcp:corvinussql.database.windows.net,1433  
> ➖ Database - WebshopExample

```sql
-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing
UPDATE dbo.Termek
SET Keszlet = 10
WHERE Nev = N'Alma';
```

Ez a lekérdezés visszaállítja az "Alma" termék készletét 10-re.