# Checklist az második ZH-hoz

## Témakörök

Az elmúlt három gyakorlaton a következő témakörök kerültek elő:
- Szövegfájlok beolvasása soronként
- Tömbök használata
- string darabolása elválasztó karkter mentén tömbbe, pl: `string[] darabok = egész.Split(';');`
- Űrlapon szereplő vezérlők listájának bejárása, mint pl. az ütközésvizsgálat a kígyónál
- Billentyű lenyomások kezelése, pl. kígyó vagy játékos mozgatása
- GDI grafika, egyszerű ábrák rajzolása

ZH-ra bemelegítésül a következő feladatokat javasoljuk:

## Gyakorlófeladatok ZH-ra

### Képernyőbillentyűzet

Melléklet: [kbd_hun.txt](kbd_hun.txt)

Töltsd le a kbd_hun.txt állományt! Az állomány egy képernyőre kirakható billentyűzetet ír le, minden billentyűhöz adottak a billentyű x és y koordinátái, szélessége, magassága valamint a billentyűn szereplő szimbólum. (Minden billentyűhöz 5 sor tartozik a fájlban.) Építsd fel a képernyőn a billentyűzetet, úgy hogy egy érintőképernyőt feltételezve a billentyűkre kattintással gépelni lehessen egy szövegdobozba. (Érdemes lehet először az összes feladatot végigolvasni, hogy összeálljon a teljes kép.)

1.	Származtass osztályt `Billentyű` néven a `Button` osztályból!
2.	A származtatott osztályt bővítsd konstruktorral, melyben eseménykiszolgáló függvényt rendelsz a `MouseEnter` és `MouseLeave` eseményekhez. Az eseménykiszolgálók színezzék át a magát a gombot `Fuchsia` színűre, ha az egér fölé ér, majd színezék vissza a Windows témában megadott gomb-színre, ha az egér távozott. (Ezt csak úgy megszokásból :)
3.	Add a letöltött fájlt a projekthez úgy, hogy minden futtatáskor a lefordított állomány mellé kerüljön! (Copy to output directory)
4.	A `Form1` osztály `Load`  eseményéhez rendelt eseménykiszolgálóban hozz létre egy példányt a `StreamReader` osztályból, melynek segítségével megnyitod az állományt!
5.	`While` ciklus segítségével addig olvasd a fájlt, amíg a végére nem ér. A ciklustörzsben 
	a.	olvass ki öt sort a fájlból egy-egy értelemszerűen elnevezett `string` típusú változóba!
	b.	Hozz létre egy példányt a `Billentyű` osztályból, és ezt add az űrlap vezérlőinek listájához!
	c.	A fájlból olvasott adatok alapján pozícionáld a billentyűt az űrlapon, állítsd be a méretét, és a feliratát! (Elképzelhető, hogy szöveg típusú változókat helyenként számmá kell konvertálni.)
	d.	Rendelj közös esemény-kiszolgáló függvényt a gombok kattintás eseményéhez!
6.	Hozz létre tervezőből egy szövegdobozt az űrlapon! (Ebbe lehet lesz majd írni a gombokra kattintgatva.)
7.	Az előző lépésben létrehozott esemény kiszolgálóban castold a sender-t Billentyű típusúvá, majd szövegét add a szövegdoboz szövegéhez. (A += oprtátor szövegekre is működik.)

A 7. pont egy magyarázatot igényel, erről feltöltök egy videót, nem lesz a ZH-ban, viszont így teljes a példa.

(!Vid) Megoldás videó 1. része
> [!Video https://storage.altinum.hu/szoft1/S1kbdhun1.m4v]

(!Vid) Megoldás videó 2. része
> [!Video https://storage.altinum.hu/szoft1/S1kbdhun2.m4v]

## Gombokkal mozgatható játékos

Képzeljetek el egy billentyűkkel négy irányba mozgatható játékost, ami most az egyszerűség okán egy kis négyzet lesz!

1. Származtass osztályt a `PictureBox`-ból `Négyzet` néven. 
2. A `Négyzet` osztály konstruktorában színezze magát fuksziára, és méretezze magát 30x30 képpontosra.
3. Build-eld a projektet -- vagy futtasd és állítsd le.
4. Ha minden jól ment, a tervezőben lesz egy `Négyzet` nevű vezérlő: helyezz el belőle egyet az űrlapon, majd nevezd el `játékos`-nak.
5. Az űrlap `KeyDown` eseményéhez rendelj eseménykiszolgáló függvényt. 
6. A `KeyDown` eseménykiszolgálóban annak függvényében, hogy melyik billentyűt nyomták meg, a `játékos` `Top` illetve `Left` tulajdonságát növeld vagy csökkentsd 30-al értelemszerűen. 

(!Vid) Megoldás videó
> [!Video https://storage.altinum.hu/szoft1/S1movingPlayer.m4v]

## Véletlenszerűen mozgó ellenségek

1. Származtass osztályt a `PictureBox`-ból `Gonosz` néven. 
2. A ` Gonosz ` osztály konstruktorában színezze magát fuksziára, és méretezze magát 30x30 képpontosra.
3. A `Form1` szintjén hozz létre egy példányt a `Random` osztályból.
4. A `Form1` `Load` eseményéhez rendelt eseménykiszolgálóban helyezz el 30 gonoszt az űrlapon, de úgy, hogy a koordinátáik 30 többszörösei legyenek. 
5. Hozz létre egy `Timer`-t tetszőleges módszerrel, melynek fél másodpercenként sül el a `Tick` eseménye. 
6. A `Tick` eseményhez tartozó eseménykiszolgálóban járd be `foreach` ciklussal a `Controls` gyűjteményben szereplő elemeket `Gonosz`-szá castolva, és mozgass minden gonoszt vétlenszerű irányba. 
7. Ha egy `Gonosz`-t olyan pozícióba tennél, ahol már van gonosz, színezd át mind a kettőt tetszőleges színűre.



## Rajzolós

A eladat egy állatot rajzoló alkalmazás készítése. Az egyszerű vonalakból felépítendő ábra egyes csúcspontjainak koordinátái a [rajz2.csv](http://web.uni-corvinus.hu/~lmohacs/szoft/ZH/rajz2.csv) fájlban állnak rendelkezésre. Az ábra szakaszokból álló „tört vonalakból” áll. A csúcspontokat a fájl egy-egy sora jelöli. – a *-ot tartalmazó sorok új „tört vonal” kezdetét jelölik. A fájl formátuma a következő:

```
3;12;*
1;8
2;5
2;3
9;5
10;10;*
12;16
10;18
13;19
13;16
…
```

![img](clip_image001.png)

**Előkészületek**

1. Helyezz az űrlapra egy panel objektumot, melynek alapértelmezett háttérszínét állítsd fehérre és méretét 500 x 500 pixelre! Igazítsd a `Form` bal felső sarkába!

**Ábra rajzolása és törlése**

1. A `Form1` osztály szintjén hozz létre `ux` és `uy` nevű egész típusú változót `0` kezdőértékkel, melyben az utoljára megrajzolt csúcs koordinátáját tárolod. 

2. Hozz létre egy gombot, melyre kattintva megtörténik a rajzolás. 

   `StreamReader` osztály segítségével nyisd meg a fájlt, és `while` ciklus segítségével járd be a sorait!

3. A ciklustörzsben olvasd be a fájl egy sorát, és a `;` karakter mentén törd egy tömbbe. A tömb első két eleme alapján olvasd ki az `x` és `y` koordinátákat, majd rajzold meg a panelre `(x;y)-(ux;uy)` szakaszt! Rajzolás után `ux` illetve `uy` értékét állítsd `x` illetve `y` értékére! Kirajzoláskor nagyítsd az ábrát 25-szörösre, azaz minden koordinátát szorozz 25-el! (Most még nem vesszük figyelembe `*` karaktereket és az új „tört vonalak” kezdetét.

4. Vegyük figyelembe az új szakaszok kezdetét: ha a `;` mentén létrehozott tömb elemeinek száma 3, ne rajzolj, csak állítsd be az `ux` ill.  `uy` koordinátákat. (Nem a `*` karaktert keressük, így egyszerűbb.)

5. Az ábra most fejjel lefelé áll, fordítsd meg!

   

   ## **Előadásra**



- [colors.csv](colors.csv) 

- [srac.csv](srac.csv) 

- [lany.csv](lany.csv) 

- [quiz.txt](quiz.txt)

- [szavak.csv](szavak.csv)  

- [fa.csv](fa.csv) 
