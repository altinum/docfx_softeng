# A beadandó feladatok értékelése

## Feladatválasztás 

Feladat szabadon választható a honlapon közzétett listából. A választást nem kell közölni. 

## A ZH és a projektfeladat bemutató videó leadása

A projektfeladatot a megadott a gyakorlaton kell felépíteni, kód minta semmilyen formában nem hozható be. Ha a projekthet képek vagy szöveges állományok szükségesek, ezek előre feltölthetőek Moodle-be, és a ZH alatt letölthetőek. A projektfeladat felépítését otthon elő lehet készíteni, és be lehet gyakorolni. 

A **Moodle-ben** a megadott időpontig **leadandó a forráskód**, valamint a programot működés közben bemutató pontosan 3 perces **hang-alámondásos videó**. Természetesen ez a projekt ZH után készíszítendő el. 

A néhány perces kötött bemutató nehéz műfaj, de a vezetők ideje drága, ezért gyakran kell összetett dolgokat rövid idő alatt elmagyarázni. A videó néhány mondatban térjen ki a következőkre:

1. A feladat bemutatása pár mondatban, melyre az elkészített program megoldást nyújt

2. A program bemutatása működés közben a felhasználóknak

3. A program bemutatása fejlesztői szemszögből:
   
   a.  Osztályok és forráskód bemutatása.
   
   b.  Tervezett időráfordítás összevetése tényleges időráfordítással.
   
   c.  Problémamegoldás során felmerülő esetleges kritikus pontok
   
   d.  Esetleges fejlesztési lehetőségek.

A tárgyhoz készült videók az ingyenes és nyílt forráskódú [Open Broadcaster Software](https://obsproject.com/) (OBS) programmal készültek, de természetesen bármilyen szoftver használható. Az OBS beállításai közt a mentett videó felbontását érdemes a képernyő natív felbontásának megfelelő méretre állítani, mert alapértelmezésben 1280x720-as felbontásra méretezi át a lementett videókat.

> Kaptam olyan visszajelzést, mely szerint a videók elkészítéséhez javasolt OBS képernyőfelvételnél csak fekete képet mutat. A hiba valószínűleg csak hordozható eszközöknél jelentkezik, és az energiatakarékos működéssel van összefüggésben. Az alábbi videó segíthet a probléma megoldásában: [https://www.youtube.com/watch?v=0M5d5lmOvSU](https://www.youtube.com/watch?v=0M5d5lmOvSU)

A projektfeladatok értékelésének szempontrendszerét az alábbi táblázat foglalja össze, a **projektfeladatra és a videóra együttesen maximum 10 pont kapható.**

## Az értékelés szempontrendszere

A projekt kapcsán és a bemutatón kapható pontokat az alábbi táblázat foglalja össze:

|                                                              |        |
| ------------------------------------------------------------ | ------ |
| **Megvalósítás**: az elkészült alkalmazás milyen mértékben nyújt megoldást a kapott feladatra – a program valóban alkalmas-e a kapott probléma kezelésére. Itt kerül értékelésre a forráskód olvashatósága – beszédes változónevek, kód tördelése, megfelelő behúzások, stb. A szemináriumvezető szúrópróba szerűen belekérdezhet az egyes funkciókat megvalósító kód működésébe. Ha a kód működését illetően nem érkezik kielégítő válasz, a projektfeladatra nem adható pont. | **6p** |
| **Vizuális megjelenés és kezelhetőség** vezérlők kézre eső, áttekinthető elhelyezése, átméretezhető ablakok kezelése, stb. Ha egy felhasználó ránéz a programra, akkor segítség nélkül rá tudjon jönni, hogyan kell használni. Itt kerül értékelésre az igényes megjelenés. A szürke háttéren szürke gombok is lehetnek igényesek, de egy egyszerű design sokat javíthat a megjelenésen. | **2p** |
| **Az alkalmazás hibatűrő képessége**: itt azt vizsgáljuk, hogy hibás adatok megadásával meg lehet-e akasztani a program működését, vagy egy hiányzó, esetleg hibás adatokat tartalmazó fájl kezeletlen kivételt generál-e. A `try` `catch` blokkok fontos szerepet játszanak ebben a kategóriában. | **2p** |
