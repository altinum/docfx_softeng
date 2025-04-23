# Pontozólap minta
Név: 

Neptun:

## Projekt rövid leírása:
Egy egyszerű webapplikáció sakkfeladványok megjelenítésére. Egy felhasználó van, az `index.html` betöltésénél a backend lekér az `Azure`-ban lévő adatbázisból tíz olyan sakkfeladványt, ami a felhasználó szintjének megfelel.
A feladványokat úgy lehet megoldani, hogy ráklikkelünk arra a figurára, amivel lépni szeretnénk, majd arra a mezőre, ahova szeretnénk vele lépni.
Két oldalra lehet navigálni a fejlécben, az egyik megjeleníti az éppen streamelő sakkozókat javascript által generált `div`-ekben, a másik pedig átirányít a Chess.com nap feladványára.


## Hozott anyagok:

##### Saját Adatbázis

![azure](./pontlapImages/azure.png)
- `3x1p` Az alkalmazásban használt táblánként pont (Puzzles, Users, OpeningFamilies)
- `1p` Az adatbázis tartalmaz Constraint-eket (min 2)
- `2p` Az adatbázis saját Azure SQL szerveren van
- `1p` Az adatbázis adatainak forrásmegjelölése értsd: miből készült és hogyan:
>Az adatbázishoz az SQL-t egy C# scripttel generáltam a [Lichess rejtvényei](https://database.lichess.org/#puzzles)-ből, majd a scripteket lefuttattam Azure Data studio-ban. Az adatbázisnak öt táblája van, a Puzzles tartalmazza a feladványokat, az OpeningFamilies a nyitásokat, az OpeningVariations a nyitások variációit, a Themes kiszervezi a feladványok témáinak a listáját (pl: matt 4 lépépésből, végjáték) és a Users tábla tartalmazza a felhasználó(ka)t.

Részösszeg: `7p`

##### Weboldal

![weboldal](./pontlapImages/weboldal.gif)

- `1p` A weboldalnak van egy értelmezhető struktúrája
- `1p` A weboldal dinamikus tartalommal tölthető fel adatbázison keresztül
- `1p` A weboldal használ legalább 20 sor értelmes css-t
- `1p` A weboldal javascriptje más funkciót is ellát, mint az adatok betöltése



Részösszeg: `4p`
Eddig: `11p`

### Egyéb, extra

- `2p`  Regex alkalmazása validáláson túl (PuzzleController.cs 70.sor)
- `1p`  `Scaffold-DbContext` használata

Részösszeg: `3p`
Eddig: `14p`

##### Bonyolultabb algoritmus használata értelmes feladatra

- `1p` Az algoritmus egy önállóan értelmezhető egységet képez, az alkalmazástól függetlenül
- `1p` Az algoritmus értelmes szerepet kap az alkalmazásban és nem lehet beépített megoldásokra kicserélni, nincs túlbonyolítva
- `1p` Az algoritmus az adatbázis adataira épít
- `1p` Az algoritmus (8. osztályig nem tanított) matematikai képletet is alkalmaz
Élő pont számítás: https://en.wikipedia.org/wiki/Elo_rating_system
```csharp
public abstract class EloCalculator
    {
        public static int CalculateElo(int currentElo,int puzzleRating,bool isSolved)
        {
            double K = 16;
            double E = 1 / (1 + Math.Pow(10, (puzzleRating - currentElo) / 400));
            return Convert.ToInt32(Math.Round(isSolved?currentElo+K*(1-E):currentElo-K*(E)));
        }
    }
```

Részösszeg: `4p`
Eddig: `18p`

### ASP .NET 

- `2p`  `program.cs` beállítása `wwwroot` mappában tárolt statikus tartalmak megosztására

Részösszeg: `2p`
Eddig: `20p`

##### API végpontok

![swagger](./pontlapImages/swagger.png)

- `3p` Teljes SQL tábla adatainak szolgáltatása API végponton keresztül (openings)
- `2x2p` SQL tábla egy választható rekordjának szolgáltatása API végponton keresztül (getElo,getOpeningVariation)
- `3p` SQL tábla egy választható rekordjának törlése (deleteUser)
- `5p` Új rekord felvétele `HttpPost` metóduson keresztül SQL táblába (createUser)
- `2x3p` Rekord módosítása `HttpPost` metóduson keresztül SQL táblában (updateElo,changeUsername)
- `2x5p` Külső API végpont használata JS kódban, itt: [Chess.com nap feladványa](https://api.chess.com/pub/puzzle),[Chess.com streamerek listája](https://api.chess.com/pub/streamers)
![streamers](./pontlapImages/streamers.png)

Részösszeg: `31p`
Eddig: `51p`

##### Javascript

- `2x5p` DOM feltöltése javascripttel (streamerek neve és ikonja, twitch url)
Részösszeg: `10p`

## Összessen: `61p`
