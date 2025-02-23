# Böngészők fejlesztőknek

Ez egy kiegészítő anyag. 

## Böngészők piaca

Különválasztandó a böngésző és a *render engine* fogalma: a *render engine* a böngészőnek az a része, mely az oldalak megjelenítéséjért és a Javascript futtatásáért felelős. A legtöbb *render engine* nyílt forrású. Egy adott *render engine* köré több böngésző is épülhet.
- A **Chromium** motor köré épül a [Chrome]() mellett például a [Vivaldi](https://vivaldi.com/) és az [Opera](https://www.opera.com/) asztali változata is.
- 2020-ban a Microsoft is befejezte saját böngészőmotorjának fejlesztését, és az Edge alá is Chromium motor került. 
- Az Apple [Safari](https://www.apple.com/safari/)-ja és a [DuckDuckGo](https://duckduckgo.com) böngésző is a **WebKit** motorra épül. iOS eszközön nincs lehetőség a beépített WebKit-en kívül más böngészőmotor használatára, az AppStore-ból telepíthető böngészők csak a WebKit köré húznak más kezelőfelületet. 
- A FireFox a **Gecko** motorra épül, melyet a Mozilla alapítvány fejleszt.  

A [Chrome browser for enterprise](https://chromeenterprise.google/browser/download/) változat lehetővé teszi a böngésző biztonsági beállításainak központi kezelését. Céges környezetben például megtiltható a fájlok fel- vagy letöltése, jelszavak mentése. A szoftverfrissítések felett is van hatalma a rendszergazdának. 

### Honnét jön a profit? 

A böngészők piacán a profit fő forrása a keresőforgalom értékesítése.

A Mozilla érdekesen működik: a Mozilla Alapítvány 100%-os tulajdonát képezi a piaci alapú Mozilla Corporation. A Mozilla Corporation bevétele jelentős része a keresőforgalom átirányításából származik, a például Google mellett a Yahoo, a Yandex, és a Baidu is fizettek azért, hogy ők legyenek az alapértelmezett keresők különböző régiókban. Jelenleg a Mozilla bevételének több, mint 90%-a a Google-től származik.

2020-ban a Mozilla elbocsátotta 250 dolgozóját, amely körülbelül a teljes dolgozói állomány negyede. A hír a sokakat aggodalommal tölt el, mert ha a Gecko motor fejlesztése befejeződik, a Google által gondozott Chromium egyeduralkodó marad a piacon. 

Érdemes feltenni a kérdést, hogy a Google mögött álló cég, az Alphabet miért tartja életben a Firefox-ot a keresőforgalom megvásárlásával, hiszen a Firefox halálával a felhasználóbázis jelentős része várhatóan Chrome-ra lenne kénytelen váltani. 

Olvasnivaló a témában:
- https://medium.com/swlh/could-google-crush-firefox-in-2020-13a55b5d4526
- https://netmarketshare.com/
- https://www.mozilla.org/en-US/foundation/annualreport/2018/

## Weboldal hibakeresése mobil eszközökön

### iOS 

A Safarinak windows-os vagy Linux-os változata nincs!  iOS eszközökre fejleszteni, illetve a Safariban futó weblapokat debugolni csak Mac gépen lehet. (Vannak kattintásvadász oldalak, akik azt ígérik, hogy PC-n virtuális gépben futtatható a MacOS, de ilyet működni nem láttunk, jogilag sem ok.)

Bővebb infó az Apple [Web Development Tools](https://developer.apple.com/safari/tools/) oldalán található. 

### Android

Lépések:
1.  Open the  **Developer Options**  screen on your Android. See  [Configure On-Device Developer Options](https://developer.android.com/studio/debug/dev-options.html).
2.  Select  **Enable USB Debugging**.
3.  On your development machine, open Chrome.
4.  Go to  `chrome://inspect#devices`.
5.  Make sure that the  **Discover USB devices**  checkbox is enabled.

Bővebb információ a Google fejlesztői oldalán a [Get Started with Remote Debugging Android Devices]( https://developers.google.com/web/tools/chrome-devtools/remote-debugging) cikkben található. 

## Lighthouse

A weboldalak betöltődési sebessége jelentős hatással van a felhasználói élményre. 2016-ban a Pinterest végzett egy kísérletet a weboldalaik optimalizálására, melynek végén 40%-kal tudták csökkenteni a várakozási időt, ezáltal 15%-kal nőt a keresőoldalakról történő forgalom, és 15%-kal több felhasználó regisztrált  ([Meder et al., 2017](https://medium.com/pinterest-engineering/driving-user-growth-with-performance-improvements-cfc50dafadd7))

###  Lighthouse mérőszámok

####	First Contentful Paint
A First Contentful Paint azt méri , hogy mennyi ideig tart a böngészőnek megjelenítenie a DOM első részét, miután a felhasználó felkereste a weboldalt. Az First Contentful Paint szempontjából az egyik legnagyobb probléma lehet a betűkészletek betöltési ideje, hiszen ezek általában nagy fájlok, melyeket sokáig tart betölteni, és néhány böngésző nem jeleníti meg a szöveget, amíg a betűkészlet be nem tölt.

####	Largest Contentful Paint
A Largest Contentful Paint a legnagyobb elem kirenderelési idejét mutatja meg, ilyen elemek például a képek, videók, azok az elemek, amelyek a hátterüket egy külső url-ről kapják vagy olyan block-szintű elemek, amik szövegeket vagy más gyermek elemeket tartalmaznak. A méretet a felhasználó által látható rész adja meg, azaz ha az elem kilóg a megjelenítési területről, le van vágva, vagy egy másik elem eltakarja egy részét az nem számít bele. Átméretezett képek esetén vagy a megjelenített vagy az eredeti méret számít, attól függ, hogy melyik a kisebb. Szöveges elemek esetén pedig a legkisebb téglalap, amibe az összes látható szöveg belefér. A Largest Contentful Paint esetén fontos figyelembe venni, hogy csak akkor számíthat bele egy elem a mérésbe ha meg is jeleníti azt a böngésző. Emiatt ha a felhasználó a háttérben nyit meg egy weboldalt, addig a Largest Contentful Paint nem történik meg, amíg a felhasználó nem fókuszál a weboldalra. A mérőszám három tényezőtől függ elsősorban: a szerver válaszideje, a CSS blokkoló ideje és az erőforrás betöltési ideje. Ha a megjelenítés kliens oldalon történik és az elemek JavaScript-tel vannak hozzáadva a DOM-hoz, akkor a szkript fordítási és futási ideje is hozzájárul (Walton, 2019a).

####	Speed Index
Speed Index méri, hogy az oldal tartalma milyen gyorsan jelenítődik meg a betöltés során. Ehhez a Lighthouse egy videót rögzít a betöltésről, majd az egyes képkockák között megvizsgálja az eltérést. Bár minden, ami az oldal betöltési sebességén gyorsít, javítja a Speed Index-et is. Fontos figyelni a főszál munkájának minimalizálására, JavaScript végrehajtási idejének csökkentésére és a szöveg megjelenítésére a betűkészlet letöltése alatt, hiszen ezeknek kifejezetten nagy hatásuk lehet (web.dev, 2019c).

####	Time to Interactive
Egy oldal, akkortól számít teljesen interaktívnak, ha az oldal használható tartalmat jelenít meg, amit a First Contentful Paint mér, a legtöbb látható elemhez hozzá vannak rendelve az eseménykezelők, és az oldal reagál a felhasználói interakciókra 50 ezred másodpercen belül. A mérése kifejezetten fontos, mert gyakori, hogy az oldal a megjelenítésre koncentrál az interaktivitás rovására, ami zavaró felhasználói élményhez vezethet, hiszen bár az oldal teljesen betöltött, mégsem reagál a felhasználó interakcióira. A legnagyobb hatással a felesleges JavaScript futtatás elhalasztása vagy elkerülése van rá.

####	Total Blocking Time
A Total Blocking Time azt az időt méri, amíg az oldal nem reagál az olyan felhasználói interakciókra, mint kattintások, érintések vagy billentyűlenyomások. Ez azoknak a hosszú folyamatoknak a blokkoló része, amik a First Contentful Paint és a Time to Interactive között futnak. Minden olyan feladat, aminek a végrehajtása 50 milliszekundumnál hosszabb, hosszú folyamatnak számít és az 50 milliszekundum feletti idő pedig blokkoló résznek számít. Csökkenteni a JavaScript folyamatok optimalizálásával lehet.

####	First Input Delay
A First Input Delay azt az időt mutatja meg, ami a felhasználó első interakciója után telik el addig, amíg a böngésző képes arra valóban reagálni. Ha a főszál elfoglalt a JavaScript elemzésével és végrehajtásával, az akadályozhatja, hogy végre hajtsa az eseménykezelőket, hiszen a betöltés alatt álló JavaScript fájl elképzelhető, hogy megváltoztatná az eseménykezelők működését. Azért csak az első interakciót méri, mivel ez adja a felhasználónak az első benyomást az oldalról, illetve a legnagyobb interaktivitásbeli probléma általában a betöltés során történik, ezért az első érintkezésnek van a legnagyobb hatása a felhasználóra. Csak diszkrét akciókat mér, például a kattintás vagy billentyűlenyomás, mivel az olyan folyamatos akciókra mint a görgetés vagy zoomolás más teljesítménybeli megkötések vonatkoznak, és gyakran más szálon is futtatja őket a böngésző a késleltetés elkerülése érdekében.

