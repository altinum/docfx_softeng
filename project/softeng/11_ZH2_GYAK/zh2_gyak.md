# Minta feladatsor 2. ZH-hoz

## 1. rész: webalkalmazás készítése

### 1.1 Porojekt létrehozása, előkészületek

❶ Hozz létre projektet az ASP .NET Web API template alapján, melyben endedélyezed a 

- Swagger használatát
- Controllerek használatát

A projekt neve a zh-ban adott lesz, most tetszőleges.

❷ Módisítsd a `program.cs`-t úgy, hogy a webalkalmazás middleware-ek használatával 

- kiszolgálja a `wwwroot` könyvtárban lévő statikus állományokat,
- automatikusan alapértelmezett fájlokat szolgáltasson ki a `wwwroot` könyvtárból, ha egy URL nem hivatkozik konkrét fájlra (`index.html`,`default.html`,`index.htm`,`default.htm`).



> [!TIP]
>
> A sorrend a middleware-eknél fontos! 
>
> ```cs
> app.UseDefaultFiles(); // Engedélyezi az alapértelmezett fájlok keresését
> app.UseStaticFiles();  // Kiszolgálja a statikus fájlokat, például HTML, CSS
> ```

❸ Hozd létre a `wwwroot` könyvtárat az alkalmazásmappában, és helyezz el benne egy `index.html` állományt tesztelésre alkalmas egyszerű HTML tartalommal (Pl. *Hello Wolrd!*)

❹ Készítsd el az ORM állományokat a következő adatbázishoz:

```powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=FunnyDatabase;User ID=vendeg;Password=12345;Encrypt=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir BookModels
```

**Adatmodell:**

**Book tábla**:

   - **id**: Egyedi azonosító (szám, automatikusan generált).
   - **title**: A könyv címe (string, NOT NULL).
   - **author**: A szerző neve (string, NOT NULL).
   - **year**: A kiadás éve (szám, NOT NULL).
   - **genre**: Műfaj (string, NOT NULL).
   - **isAvailable**: Elérhetőség (boolean, NOT NULL).

> [!IMPORTANT]
>
> Futtatás után meg kell jelennie az index.html-ben lévő szövegnek.


### 1.2 API Controllerek létrehozása

❻ Fejtsd ki a  `GET`  metódut, mely a teljes tábla tartalmát visszaadja!

> [!Tip]
>
> A metódus visszatérési típusát írd át `IActionResult` típusúra, mert így használhatod a `return Ok();`, `return NotFound();`, stb. metódusokat!

**GET /api/books**

- Leírás: Az összes könyv listázása.
- Példa válasz:

```json
[
  { "id": 1, "title": "Egri csillagok", "author": "Gárdonyi Géza", "year": 1899, "genre": "Történelmi", "isAvailable": true },
  { "id": 2, "title": "A Pál utcai fiúk", "author": "Molnár Ferenc", "year": 1906, "genre": "Ifjúsági", "isAvailable": false }
]
```

❼ Egy könyv lekérdezése azonosító alapján

Fejtsd ki a  `GET`  metódut, mely a route-ban átadott kulcsú rekordot adja vissza! 

**GET /api/books/{id}**

- Leírás: Egy adott könyv részleteinek lekérdezése.
- Példa válasz:
  ```json
  { "id": 1, "title": "Egri csillagok", "author": "Gárdonyi Géza", "year": 1899, "genre": "Történelmi", "isAvailable": true }
  ```

A metódust kiegészítve kezeld azt az esetet, amikor az adatbázisban nem szerepel a kért azonosítóval rekord! Használd az `Ok()` és a `NotFound` függvényeket a válasz előállításához. 

❽ Új könyv hozzáadása

Fejtsd ki a  `POST`  metódut, mely új rekordot szúr be a táblába!

> [!WARNING]
>
> Ha az adatbázis táblában az elsődleges kulcs automatikusan számozódik (IDENTITY), nem szabad értéket adni neki új rekord beszúrásakor, mert az az SQL szerver felől hibaüzenethez vezet. A NOT null mezőknek mindenképpen értéket kell adni!

**POST /api/books**

- Leírás: Egy új könyv hozzáadása.
- Kérés példa:

```json
{ "title": "1984", "author": "George Orwell", "year": 1949, "genre": "Disztópia", "isAvailable": true }
```

- Válasz:
     200-as status kód sikeres hozzáadás esetén.

❾ Könyv törlése

Fejtsd ki a  `DELETE`  metódut, mely törli a route-ban megdott kulcsú rekordot az adatbázisból! 

A `DELETE` metódust kiegészítve kezeld azt az esetet, amikor az adatbázisban nem szerepel a kért azonosítóval rekord. Használd az `Ok()` és a `NotFound` függvényeket a válasz előállításához. 

**DELETE /api/books/{id}**

- Leírás: Egy könyv eltávolítása.
- Válasz:
  200-as státusz kód, ha sikeres a törlés, 404-ha nem létezik a törlendő könyv az adatbázisban.


> [!IMPORTANT]
>
> Használd a Swaggert az API Controllerek működésének ellenőrzésére! Nincs értelme addig továbbmenni a webes frontend tervezésére, amíg az API Controllerek nem működnek az elvárásoknak megfelelően! 

### 1.3 HTML frontend készítése az alkalamzáshoz

 ❿ Az oldal betöltése után jelenjen meg az összes könyv egy táblázatban! 

``` html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Könyvek Táblázat</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <h1>Könyvek</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Cím</th>
                <th>Szerző</th>
                <th>Kiadás Éve</th>
                <th>Műfaj</th>
                <th>Elérhetőség</th>
            </tr>
        </thead>
        <tbody id="tb_konyvek">
            <tr>
                <td>1</td>
                <td>Egri csillagok</td>
                <td>Gárdonyi Géza</td>
                <td>1899</td>
                <td>Történelmi</td>
                <td>Igen</td>
            </tr>
            <tr>
                <td>2</td>
                <td>A Pál utcai fiúk</td>
                <td>Molnár Ferenc</td>
                <td>1906</td>
                <td>Ifjúsági</td>
                <td>Nem</td>
            </tr>
            <tr>
                <td>3</td>
                <td>1984</td>
                <td>George Orwell</td>
                <td>1949</td>
                <td>Disztópia</td>
                <td>Igen</td>
            </tr>
        </tbody>
    </table>
</body>
</html>

```

⓫ Készíts beviteli mezőket és egy gombot új könyv rögzítéséhez! 

⓬ Készíts beviteli mezőket és egy gombot adott azonosítójú könyv törléséhez! 

## 2. rész: asztali alkalmazás készítése

⓭ Ugyanebbe a Solution-be készíts egyszerű asztali Windows Forms alkalmazást, amely egy egyszerű `DataGridView`-n keresztül lehetővé teszi a tábla szerkesztését.

> [!TIP]
>
> Ha egy solution-ben több projekt is van, a Solution Explorer-ben a jobb egérgomb megnyomására felugró helyi menüben elérhető "Set as Startup Project" menüponttal lehet kiválasztani, hogy melyik projekt induljon el a ▶ gombra kattintva. 