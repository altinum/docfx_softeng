# A 2. ZH feladatai

A feladatmegoldáshoz szükséges adatbázis itt érhető el: 

``` powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=FunnyDatabase;User ID=vendeg;Password=12345;Encrypt=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir JokeModels
```

> [!IMPORTANT]
>
> A tábla nevét, amelyhez a feladatokat kell csinálni, illetve a solution nevét, a gyakorlatvezető mondja meg a ZH elején!
>
> A munkaidő 60 perc!

## 1. API Controllerek létrehozása

❶ ❷ ❸ ❹ ❺ ❻ ❼ ❽ ❾ ❿

Hozz létre API Controller-t, és valósítsd meg a következő végpontokat:

❶ `GET` metódussal hívható végpont, mely a tábla teljes tartalmát visszaadja

❷ `GET` metódussal hívható végpont, mely a tábla egyetlen rekordját adja vissza

❸ `POST` metódussal hívható végpont, melynek segítségével új rekord rögzíthető a táblába

❺ `DELETE` metódussal hívható végpont, melynek rekord törölhető a tábláblából

## 2. Statikus tartalom kiszolgálása

❻ Tedd alkalmassá alkalmazásodat statikus tartalom kiszolgálására a `wwwroot` mappából. Hozz létre egy `index.html` állományt minta tartalommal!

## 3. Kliens oldali logika

❼ Valósítsd meg a klines oldali logikát, mely az oldal betöltődésekor a teljes tábla tartalmát megjeleníti HTML `<table>`-ben!

❽ Valósítsd meg a klines oldali logikát, mely a lehetővé teszi új rekord rögzítését az adatbázisba! Minden mező szükséges, kivéve a kulcsot, amennyiben az automatikusan számozódik (IDENTITY). 

❾ Valósítsd meg a klines oldali logikát, mely a lehetővé teszi rekord törlését!

## 4 Forms projekt

❿ A meglévő *Soluion*-ben hozz létre Froms projektet, mely egy egyszerű `DataGridView` vezérlőben jeleníti meg a tábla adatait! 

⓫  A  `DataGridView`  mellett legyenek `TextBox`-ok is, amelyekben az éppen kiválasztott rekord adatai jelennek meg!