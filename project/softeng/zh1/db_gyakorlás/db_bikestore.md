# "Bikestore" mintaadatbázis

## Az adatbázis elérése

🅐 Az adatbázist felépítő sql mondatok letölthetők innen, ha saját szerveren, vagy lokálisan szeretnéd felépíteni az adatbázist: [se_bikestore.sql](se_bikestore.sql) 

🅑 Ha az egyetemi szerveren lévő változatot használnád:

```powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=se_bikestore;User ID=hallgato;Password=Password123;Encrypt=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models
```

> [!WARNING]
>
> Az bit.uni-corvinus.hu csak VPN alól érhető el! 

## Mit érdemes gyakorolni?

### 1. gyakorló feladatsor: Áruházak raktárkészletének kezelése

❶ Keress egy N:M kapcsolatot az adatbázisban. Ilyen például az áruházak (`stores`) és a termékek (`products`) közötti kapcsolat, ahol a kapcsolótábla a `stocks`. 

❷ Jelenítsd meg baloldalon egy szűrhető listában az áruházakat.

❸ Ha a felhasználó kiválaszt egy áruházat, az áruházakat tartalmazó lista mellett egy rácsban jelenjen meg az adott áruház raktárkészlete. Jelenítsd meg a terméknév mellett a darabszámot is! A rács feltöltéséhez készít saját osztályt!

❹ Az űrlap jobb oldalán egy szűrhető listában jelenítsd meg a termékeket!

❺ Helyezz el egy `Hozzádás` és egy `Törlés` gombot, valamint egy szövegdobozt a raktárkészletet megjelenítő rács és a terméklista között.

❻ A `Hozzádás` gomb bővítse a kiválasztott áruház raktárkészletét A kiválasztott termékkel a szövegdobozban megadott mennyiséggel. Új rekord hozzáadásáról beszélünk. Geekek írhatnak egy lekérdezést, ami megnézi, hogy az adott termékhez van-e már bejegyzés a `stocks` táblában. Ha van akkor a darabszámot bővítjük, és csak akkor veszünk fel új rekordot, ha nincs.

❼ Valósítsd meg a törlés funkciót is értelemszerűen!

### 2. gyakorló feladatsor: Rendelések kezelése

❶ A rendelések kezelésénél egyenlőre szorítkozzunk az adatbázisba rögzített megrendelések megjelenítésére. Az űrlap volt balról jobbra haladva az alábbiak szerint építsd föl:

❷ Helyezz el egy `ListBox`-ot és felette egy `TextBox`-ot, Melyben a vásárlókat jelenített meg névre szűrhetően.

❸ A vásárlók listája mellett lévő `ListBox`-ban jelenítsd meg az éppen kiválasztott vásárló megrendeléseit!

❹ A megrendelések mellett helyezz el egy rácsot! Ide kerüljenek a kiválasztott megrendeléshez tartozó rendelési tételek az `order_items` tábla alapján. A rács adatkötéséhez használj saját osztályt!

## Az adatbázis sémája

``` mermaid
erDiagram
    products }|--|| brands : "brand_id"
    products }|--|| categories : "category_FK"
    order_items }|--|| orders : "order_FK"
    order_items }|--|| products : "product_FK"
    orders }|--|| customers : "customer_FK"
    orders }|--|| staffs : "staff_FK"
    orders }|--|| stores : "store_FK"
    staffs }|--|| stores : "store_FK"
    staffs }|--|| staffs : "manager_FK"
    stocks }|--|| stores : "store_SK"
    stocks }|--|| products : "product_FK"
```





``` mermaid
erDiagram
    brands {
        int brand_SK PK
        varchar brand_name
    }
    categories {
        int category_SK PK
        varchar category_name
    }
    customers {
        int customer_SK PK
        varchar first_name
        varchar last_name
        varchar phone
        varchar email
        varchar street
        varchar city
        varchar state
        varchar zip_code
    }
    products {
        int product_SK PK
        varchar product_name
        int brand_id FK
        int category_FK FK
        smallint model_year
        decimal list_price
    }
    orders {
        int order_SK PK
        int customer_FK FK
        tinyint order_status
        date order_date
        date required_date
        date shipped_date
        int store_FK FK
        int staff_FK FK
    }
    order_items {
        int order_FK FK
        int product_FK FK
        int quantity
        decimal list_price
        decimal discount
    }
    stores {
        int store_SK PK
        varchar store_name
        varchar phone
        varchar email
        varchar street
        varchar city
        varchar state
        varchar zip_code
    }
    staffs {
        int staff_SK PK
        varchar first_name
        varchar last_name
        varchar email
        varchar phone
        tinyint active
        int store_FK FK
        int manager_FK FK
    }
    stocks {
        int store_SK FK
        int product_FK FK
        int quantity
    }

    products }|--|| brands : "brand_id"
    products }|--|| categories : "category_FK"
    order_items }|--|| orders : "order_FK"
    order_items }|--|| products : "product_FK"
    orders }|--|| customers : "customer_FK"
    orders }|--|| staffs : "staff_FK"
    orders }|--|| stores : "store_FK"
    staffs }|--|| stores : "store_FK"
    staffs }|--|| staffs : "manager_FK"
    stocks }|--|| stores : "store_SK"
    stocks }|--|| products : "product_FK"

```

