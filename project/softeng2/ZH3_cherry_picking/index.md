# Pontvadász ZH 

## Cherry Picking 

Az utolsó ZH-ra mindenki magának állít össze feladatot a kurzus során tanult megoldásokból. A feladatot elő kell készíteni otthon, de adott, hogy milyen megoldás hány pontot ér. A feladat ASP. NET illetve Forms alkalmazás építése, mely valós vagy kitalált problémára -- vagy annak egy részére nyújt megoldást. A `Scaffold-DbContect` parancsot, illetve, ha lokális "Service Based Database" használata mellett döntötök, akkor az adatbázist létrehozó SQL scriptet hozhatjátok magatokkal, de a C# projektet az utolsó gyakorlat 90 perce alatt kell felépíteni. 

A feladathoz készíthettek saját adatbázist, de felhasználhatjátok a kurzus során használt adatbázisokat is. Összesen 30 pontot lehet összeszedni, de csak a működő megoldásokra kapható pont, részpontok nincsenek. A saját adatbázis 5 pontot ér, de ha egyforma hozott adatbázisokat találunk, egyikre sem adunk pontot. 

Mindenki maga döntheti el, hogy mire helyezi a hangsúlyt.

> [!WARNING]
>
> Javasoljuk, hogy tervezéssel kezdjétek a munkát! Egy lapra rajzoljátok le, hogy mit szeretnétek megvalósítani, és az [Árlap](#Árlap) alapján kiszámolni a pontértéket. Összehasonlításul: az 1b ZH az árlap alapján 

A vizsga előkészítése önálló feladat, nem szeretnénk egyforma megoldásokat látni. Legyetek kreatívak.


## Árlap 

A pontszámok szorzat formájában kerültek megadásra, pl: `4x1p`. A **második** szám -- a példában `1p` -- azt jelenti, hogy hogy hány pontot ér az adott részfeladat, az **első** pedig az adja meg, hogy hány ismétlés kerül beszámításra. Így nem lehet egyetlen részfeladat ismételgetésével teljesíteni a ZH-t. 

### Windows Forms Application

##### User Interface 

- `1x2p` Az alkalmazásból a **kilépés csak megerősítő kérdés után** lehetséges. 
- `3x2p` Olyan alkalmazás **elrendezés, melyben gombok lenyomására UserControl-ok kerülnek elhelyezésre egy Panel vezérlőben**, teljesen kitöltve azt. Minden gombra jár a pont, amennyiben az funckuonlalitással rendelkező UserControl-t tölt be. 

- `3x1p` **Többablakos alkalmazás** legalább két felugró ablakkal. Minden Form-nak saját osztályon kell alapulnia, és funcionalitással kell rendelkeznie. Az ablakok nyílhatnak gombokkal vagy felső menüből is.

- `1x2p` **Anchorok alkalmazása**: az alkalmazás egészében meg van oldva, hogy az ablak átméretezésekor ki legyen használva a rendelkezésre álló terület.	

##### Tábla adatainak megjelenítése `ListBox`-ban. 

- `1x2p` Adatok  megjelenítése 
- `2x2p` Ha az adatok tetszőleges módszerrel, pl. `TextBox`-on keresztül szűrhetőek. 
- `1x2p` Ha a tábla adatforrása saját osztály. 

##### Tábla adatainak megjelenítése `DataGridView`-ban 

- `1x2p` Adatok  megjelenítése 
- `1x2p` Ha a tábla idegen kulcsot is tartalmaz, melynek megjelenítése `DataGridViewComboBoxColumn`-on keresztül történik. 
- `1x2p` Ha a tábla adatforrása saját osztály. 

##### Adatkötés `BindingSource` -on keresztül

- `1x2p` Működő  `BindingSource` 
- `3x1p` Egy `BindingSource`-ra egy gyűjemény megjelenítésére alkalmas vezérlő (ListÍBox, ComboBox, DataGridVIew) mellett más adatkötött vezérlő is van kötve, mint `TextBox`, `DateTimePicker`, `ComboBox` idegen kulcs értékének beállítására, stb.

##### Új rekord rögzítése 

A pontok összeadódnak. 

- `2x2p` master-detail reláció detail táblájába ÉS/VAGY több-a-több kapcsolatban álló táblák kapcsolótáblájába
- `1x2p` Ha csak az idegen kulcsok vannak felvéve
- `1x1p` Ha legalább egy nem kulcs mező, pl. _Mennyiség_ is fel van véve
- `1x2p` Ellenőrzéshez kötött adatfelvitel (egyszerű validáció pl: `String.IsNullOrEmpty()`)
- `1x2p` Felugró ablakon keresztül történik _Ok_ és _Mégse_ gombbal
- `1x2p` Ha az űrlap legördülő dobozon vagy listán keresztül beállítható idegen kulcsot is tartalmaz
- `2x1p` A kitöltési hiba `ErrorProvider`-en keresztül kerülnek köközlésre a felhasználóval, hibás kitöltés esetén nem enged rányomni az _Ok_ gombra
- `1x2p` `Regex` alapú validáció
- `1x1p` Hibás kitöltés esetén nem lehet megynomni az _Ok_ gombot. 

#####  Rekord törlése 

- `1x2p` Sikeres törlés
- `1x2p` Megerősítéshez kötött törlés

##### Diagram rajzolása, Excel munkafüzet generálása

Az utolsó előtti ea-n lesz szó róla

- `1x5p` Tetszőleges diagram rajzolása
- `1x2p` A diagram adatforrása tetszőleges módszerrel szűrhető 
- `1x7p` Excel munkafüzet generálása kódból, adatbázstába tartalmának megjelenítésével, legalább egy formázással

### ASP .NET 

ASP .NET alkalmazás, melyet lehet a Forms alapú projekttel közös solution-ben létrehozni.

- `1x2p`  `program.cs` beállítása `wwwroot` mappában tárolt statikus tartalmak megosztására

##### API végpontok

- `1x3p` Teljes SQL tábla adatainak szolgáltatása API végponton keresztül 
- `2x2p` SQL tábla egy választható rekordjának szolgáltatása API végponton keresztül
- `1x3p` SQL tábla egy választható rekordjának törlése
- `1x5p` Új rekord felvétele `HttpPost` metóduson keresztül SQL táblába
- `2x3p` Rekord módosítása `HttpPost` metóduson keresztül SQL táblában 
- `2x5p` Külső API végpont használata JS kódban, pl. [Időjárás API](https://openweathermap.org/api) [Részvény Árfolyam API](https://apistocks.com)

##### Javascript

- `2x5p` (pl: szöveg és kép) DOM feltöltése javascripttel (vizsgán írandó, NEM HOZOTT, aki ezt választja az a hozott anyagba nem rakhatja bele a js kódot amivel feltölti a tartalommal a DOM-ot, tehát ez az előre feltöltött `hozott.js`-ben nem lehet benne, vizsgán kell megírni egy `vizsga.js` fájlba.) 

### Hozott anyagok

Ezeket előre el lehet készíteni, és behozni ZH-ra Moodle-be elrőe feltöltve.  A ZH-n Moodle-ből lehet csak letölteni anyagot.
Ha javascriptet pontért írsz ZH-n, akkor egy `hozott.js`-t kell feltöltened azzal a kóddal, amiért nem jár a 2x5p, maximum az 1p az egyéb funkcionalitásért. A vizsgán egy `vizsga.js` fájlba írod a js feladatot 2x5 pontért és ezt is hivatkozod a html-ben.

##### Saját Adatbázis

SQL script formájában, de legjobb Azure SQL szerveren hosztolni

- `3x1p` Az alkalmazásban használt táblánként pont
- `1x1p` Az adatbázis tartalmaz Constraint-eket (min 2)
- `1x1p` Az adatbázis adatainak forrásmegjelölése értsd: miből készült és hogyan
- `1x2p` Az adatbázis saját Azure SQL szerveren van

##### Weboldal

Itt csak azok az elemek számíthatóak be, amelyeknek meg van a ZH alatt felépített API végpontja. 

- `1x1p` A weboldalnak van egy értelmezhető struktúrája
- `1x1p` A weboldal dinamikus tartalommal tölthető fel adatbázison keresztül
- `1x1p` A weboldal használ legalább 20 sor értelmes css-t
- `1x1p` A weboldal javascriptet használ API végpont által szolgáltatott adatok betöltésére, hozott anyagként
- `1x1p` A weboldal javascriptje más funkciót is ellát, mint az adatok betöltése

### Egyéb, extra

- `1x2p`  Regex alkalmazása validáláson túl (C# vagy js)
- `2x1p`  `Scaffold-DbContext` használata (ajándék)

##### Bonyolultabb algoritmus használata értelmes feladatra

- `1x1p` Az algoritmus egy önállóan értelmezhető egységet képez, az alkalmazástól függetlenül (értsd: könnyen újra lehetne használni máshol hasonló paraméterekkel)

- `1x1p` Az algoritmus értelmes szerepet kap az alkalmazásban és nem lehet beépített megoldásokra kicserélni, nincs túlbonyolítva

- `1x1p` Az algoritmus az adatbázis adataira épít

- `1x1p` Az algoritmus (8. osztályig nem tanított) matematikai képletet is alkalmaz

  

##### Identity Framework alkalmazása hitelesítéshez ínyenceknek

- `1x3p` Be lehet lépni felhasználónév-jelszó párossal a webalkalmazáson keresztül
- `1x3p` Lehet új felhasználót is regisztrálni
- `1x3p` Lehet létező felhasználót törölni

## A pontgyűjtés szabályai 

1. Egy solution-ön belül lehet két projekt is - egy ASP .NET és egy Windows Forms Application. Tehát lehet mindkét feladat kategóriából válogatni. 

2. Minden megoldásra csak egyszer kapható pont. 
3. A feladatot GitHub-ra kell feltölteni nyilvános repository-ba, ZH végén leadandó a repo címe Moodle-ben. 
4. Lehet a biztonságra játszani, és az maximálisan kapható 50 pontnál többet teljesíteni. Így egy-egy hibásan működő funkció esetén is kapható maximális pont. 
5. Ennél a ZH-nál nem használható a megszokott kézzel írott A4-es segédlet. 

## A pontozás menete 

**A ZH után**, otthon, mindenkinek fel kell töltenie egy Markdown állományt a projekt mappájában létrehozott `doc/` mappába, amely képernyőfelvételeken mutatja be, hogy milyen megoldásokat alkalmazott. A megoldások és a hozzájuk tartozó pontszámok listája letölthető [innét](pontlap_minta.md). A nem releváns tételek törlendők, a többi alá elhelyezendő a screenshot.

Lelkes kollégáknak javasolt a https://www.screentogif.com/, melynek segítségével animált gif-be készíthető képernyőfelvétel. 

Ha valaki olyan megoldást is feltüntet, amely hiányzik, vagy nem működik megfelelően, és a hiba leírása nem szerepel a szövegben, a megoldásra járó pont háromszorosát veszíti. 

## A feladat háttere 

Az elmúlt években a két C#-os kurzus projektfeladat leadásával zárult. Tapasztalatunk szerint akkor mélyül el igazán a tudás, ha magunknak kell megtervezni és felépíteni egy alkalmazást. Az ösztöndíjért folyó versenyben viszont nem szeretnénk olyan feladatra pontot adni, melynél nehezen ellenőrizhető az elkészítéshez igénybe vett külső segítség mértéke. A korábbi években leadott projektfeladatok nagy részét össze lehetett volna rakni másfél óra alatt, ha újra kellett volna építeni.   

 

 

 

 
