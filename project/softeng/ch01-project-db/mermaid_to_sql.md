### SQL Server főbb kényszerei:

1. **PRIMARY KEY**

   - Egyedi azonosító minden sorra.

   - Automatikusan **NOT NULL** + **UNIQUE**.

   - Pl.:

     ```mssql
     ProductId INT PRIMARY KEY
     ```

2. **FOREIGN KEY**

   - Kapcsolat két tábla között.

   - Biztosítja, hogy csak olyan érték legyen egy oszlopban, ami létezik a hivatkozott táblában.

   - Pl.:

     ```mssql
     CategoryId INT FOREIGN KEY REFERENCES Category(CategoryId)
     ```

3. **UNIQUE**

   - Az adott oszlopban minden érték egyedi legyen (de lehet több `NULL`).

   - Pl.:

     ```mssql
     Email NVARCHAR(100) UNIQUE
     ```

4. **CHECK**

   - Feltételt szab az oszlop értékére.

   - Pl.:

     ```mssql
     CHECK (Price > 0)
     CHECK (VatRate BETWEEN 0 AND 50)
     ```

5. **DEFAULT**

   - Ha nincs megadva érték beszúráskor, egy alapértelmezett érték kerül be.

   - Pl.:

     ```mssql
     VatRate DECIMAL(5,2) DEFAULT (27.00)
     ```

6. **NOT NULL**

   - Az oszlopban **nem lehet NULL érték**.

   - Pl.:

     ```mssql
     Name NVARCHAR(100) NOT NULL
     ```

------

👉 Ezeket **kombinálni is lehet**. Például a `VatRate` oszlop lehet:

```mssql
VatRate DECIMAL(5,2) NOT NULL DEFAULT (27.00) CHECK (VatRate >= 0)
```

Ez azt jelenti:

- mindig kell érték (`NOT NULL`),
- ha nincs megadva, 27% lesz (`DEFAULT (27.00)`),
- és nem enged negatív ÁFA kulcsot (`CHECK (VatRate >= 0)`).