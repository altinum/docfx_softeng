# "Bikestore" mintaadatbázis

🅐 Az adatbázist felépítő sql mondatok letölthetők innen, ha saját szerveren, vagy lokálisan szeretnéd felépíteni az adatbázist: [se_bikestore.sql](se_bikestore.sql) 

🅑 Ha az egyetemi szerveren lévő változatot használnád:

```powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=se_bikestore;User ID=hallgato;Password=Password123;Encrypt=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models
```

> [!WARNING]
>
> Az bit.uni-corvinus.hu csak VPN alól érhető el! 



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

