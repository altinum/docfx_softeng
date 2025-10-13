# Hierarchia kezelése MS-SQL-ben

## Példa hierarchiára 



``` mermaid
graph TD
    A[Products]
    A --> B[Electronics]
    A --> C[Clothing]
    A --> D[Home & Garden]

    B --> E[Mobile Phones]
    B --> F[Laptops]
    B --> G[Cameras]

    C --> H[Men's Clothing]
    C --> I[Women's Clothing]
    C --> J[Accessories]

    D --> K[Furniture]
    D --> L[Kitchenware]
    D --> M[Gardening Tools]

```

A fenti ábra Mermaid kódja:
```
graph TD
    A[Products]
    A --> B[Electronics]
    A --> C[Clothing]
    A --> D[Home & Garden]

    B --> E[Mobile Phones]
    B --> F[Laptops]
    B --> G[Cameras]

    C --> H[Men's Clothing]
    C --> I[Women's Clothing]
    C --> J[Accessories]

    D --> K[Furniture]
    D --> L[Kitchenware]
    D --> M[Gardening Tools]
```



Példa lehet még 

- a [Szálmatükör](szamlatukor.pdf),
- a könyvtárakban használt ETO (Egységes Tizedes Osztályozás),
- Cégek szervezeti fája



## Tábla létrehozása

``` mssql
CREATE TABLE Kategoria (
    KategoriaId INT PRIMARY KEY IDENTITY,
    Nev NVARCHAR(100) NOT NULL,
    HierarchiaUtvonal hierarchyid NOT NULL
);
```

## Főkategória beszúrása a táblába

```sql
INSERT INTO Kategoria (Nev, HierarchiaUtvonal)
VALUES (N'Főkategória', hierarchyid::GetRoot());
```

Ellenőrzés:

```sql
SELECT * FROM Kategoria;
```

Szöveggként bármikor megjeleníthető a `HierarchiaUtvonal`:

```sql
SELECT KategoriaId, Nev, HierarchiaUtvonal.ToString() AS HierarchiaUtvonal FROM Kategoria;
```



## Főkategória kikeresése

```sql
DECLARE @főkategória hierarchyid;
SELECT @főkategória = hierarchyid::GetRoot() FROM Kategoria WHERE KategoriaId = 1;

SELECT @főkategória AS MyVariable;
```

## Tárolt eljárás létrehozása kategória beszúrására

Példa egy alkategória beszúrására:

```sql
EXEC AddSubcategory @ParentId = 1, @SubcategoryName = N'Alkategória2';
```

AI által generált mintaadatok:

``` sql
ALTER PROCEDURE AddSubcategory
    @ParentId INT,
    @SubcategoryName NVARCHAR(100)
AS
BEGIN
    DECLARE @SzuloHierarchiaUtvonal hierarchyid;
    DECLARE @UjHierarchiaUtvonal hierarchyid;
    DECLARE @LastChild hierarchyid;

    -- Ellenőrizzük, hogy létezik-e a szülő
    SELECT @SzuloHierarchiaUtvonal = HierarchiaUtvonal
    FROM Kategoria
    WHERE KategoriaId = @ParentId;

    IF @SzuloHierarchiaUtvonal IS NULL
    BEGIN
        RAISERROR(N'A megadott szülő nem létezik!', 16, 1);
        RETURN;
    END

    -- Megkeressük a szülő legutolsó gyermekét
    SELECT @LastChild = MAX(HierarchiaUtvonal)
    FROM Kategoria
    WHERE HierarchiaUtvonal.GetAncestor(1) = @SzuloHierarchiaUtvonal;

    -- Új hierarchia érték generálása
    SET @UjHierarchiaUtvonal = @SzuloHierarchiaUtvonal.GetDescendant(@LastChild, NULL);

    INSERT INTO Kategoria (Nev, HierarchiaUtvonal)
    VALUES (@SubcategoryName, @UjHierarchiaUtvonal);
END
```

## Kategória tábla feltöltése mintaadatokkal

``` sql
DELETE FROM Kategoria WHERE KategoriaId > 1;
DBCC CHECKIDENT ('Kategoria', RESEED, 1);
-- Régiók
EXEC AddSubcategory 1, N'Közép-Magyarország';
EXEC AddSubcategory 1, N'Dél-Alföld';
EXEC AddSubcategory 1, N'Nyugat-Dunántúl';

-- Tegyük fel, hogy a régiók id-jei 2, 3, 4

-- Megyék (példák)
EXEC AddSubcategory 2, N'Pest megye';
EXEC AddSubcategory 2, N'Budapest';
EXEC AddSubcategory 3, N'Csongrád-Csanád megye';
EXEC AddSubcategory 3, N'Bács-Kiskun megye';
EXEC AddSubcategory 4, N'Győr-Moson-Sopron megye';
EXEC AddSubcategory 4, N'Veszprém megye';

-- Városok (példák)
EXEC AddSubcategory 5, N'Gödöllő';
EXEC AddSubcategory 5, N'Szentendre';
EXEC AddSubcategory 6, N'Budapest V. kerület';
EXEC AddSubcategory 7, N'Szeged';
EXEC AddSubcategory 8, N'Kecskemét';
EXEC AddSubcategory 9, N'Győr';
EXEC AddSubcategory 10, N'Veszprém';

-- Telephelyek (példák)
EXEC AddSubcategory 11, N'Gödöllői Ipari Park';
EXEC AddSubcategory 12, N'Szentendre Logisztikai Központ';
EXEC AddSubcategory 13, N'Belvárosi Üzlet';
EXEC AddSubcategory 14, N'Szegedi Logisztikai Központ';
EXEC AddSubcategory 15, N'Kecskeméti Raktár';
EXEC AddSubcategory 16, N'Győri Ipari Park';
EXEC AddSubcategory 17, N'Veszprémi Üzlet';


SELECT TOP (1000) [KategoriaId]
      ,[Nev]
      ,[HierarchiaUtvonal]
      ,HierarchiaUtvonal.ToString() AS HierarchiaString
  FROM [dbo].[Kategoria]
```

## Elem összes leszármazottjának lekérdezése

```sql
SELECT *
FROM Kategoria
WHERE Hierarchia.IsDescendantOf(
    (SELECT HierarchiaUtvonal FROM Kategoria WHERE KategoriaId = 2)
) = 1
AND KategoriaId <> 2;
```

Ez a lekérdezés minden olyan sort visszaad, amely a 2-es kategória leszármazottja (bármilyen mélységben), de magát a 2-es kategóriát nem.