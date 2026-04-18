# ZH2 Checklist

Érdemes választani egy CSV fájlt, és végigcsinálni az alábbi feladatokat.

Akár AI-al is generálhattatok magatoknak mintaadathalmazt. Legyen benne öt-hat oszlop, melyek között legyenek egész számokat, tört számokat és true/false típusú értékeket tartalmazó oszlopok is.

Nagy meglepetésekre nem kell számítani. Ez a ZH nem igényel egyéni kreatív gondolatokat és ötleteket. A ZH után távoli SQL adatbázis és az alkalmazásunk között fogunk adatokat mozgatni.  A ZH-val az a célunk, hogy az ehhez szükésges dolgokat mindenki nézze át. 

## Feladatok, amiket meg kell tudni oldani

❶  **CSV fálj egy sorát leképező osztály felépítése**

A CSV Helper használatánál érdemes nagyon odafigyelni arra, hogy a CSV fájl egy sorát leképező osztály nagyon pontosan képezze le az állományt. A fájlban szereplő oszlopfejléceknek és a CSV fájlban szereplő tulajdonságneveknek pontosan meg kell egyezniük. A gépelési hibák elkerülése végett javaslom, hogy ezeket vágólapon hordozzátok. Figyeljetek oda a tulajdonságok adattípusaira is! 

Nem kötelező a CSV helpert használni; lehet egyszerűen a `string.Split() metódussal feldarabolni a fáj sorait, ahogy a korábbi példában mutattuk.

Készüljetek arra, hogy a CSV fájl tartalmazhat szám típusú és bool típusú oszlopot is. A szám lehet egész vagy tizedes tört.

❷ **Fájl tartalmának beolvasása és megjelenítése**

A fájl megnyitásánál elképzelhető, hogy a `OpenFileDialog`-on keresztül kéri majd a feladatsor,de az is elképzelhető, hogy egyszerűen be kell másolni a projektkönyvtárba, és a `Copy to Output Directory` tulajdonságon keresztül a futtatható állomány mellé kell másoltatni.

Osztály szinten létre kell hozni egy `BindingList<>`-et, majd feltölteni a fájlból beolvasott adatokkal. 

Tesztelési céllal el lehet helyezni egy `DataGridView`-t az űrlapon, és a `DataSource` tulajdonságát be lehet állítani a listára, de ezt a következő feladat előtt érdemes ki is venni.

❸ **Fájl tartalmának mentése**

Gombnyomásra `SaveFileDialog` segítségével kiválasztott helyre kell tudni menteni adatokat CSV formátumban. Használható a CSV Helper is, de fel lehet soronként is építeni a fájlt.

❹ **Adatködöt vezérlők használata**

Létre kell hozni egy `BindingSource`-ot, és egy `DataGridView`-t. A `DGW` adatfottása a `BindingSource` legyen, a  `BindingSource`  `dataSource` tulajdonságát kódból az előző feladatban létrehoztt listára kell állítani.

❺ **"Érdekességek"**

Ebben a feladatban néhány kérdésre kell kiszámolni a választ. Elsősorban minimum és maximum keresésre lehet számítani, esetleg átlagszámolásra. 

Például:

- Hány film van az adatbázisban?

- Mennyi a legalacsonyabb értékelés, amit film kapott?

- Mi annak a filmnek a címe, ami a legalacsonyabb értékelést kapta? (Ha több film is egyformán alacsony értékelést kapott, elég az egyik címét megjeleníteni.)

A választ egy `MessageBox`-ban kell megjeleníteni gombnyomásra, egyetlne modattá összefűzve. 

> Összesen 172 film van az adatbázisban. A legrosszabb értékelés 1.0 volt: 'Ballistic: Ecks vs. Sever'. 
>

❻ Adatsor szerkesztése -- vagy -- új adatsor felvétele felugró ablakon keresztül.

Erre néztünk konkrét példát a gyakorlaton. 

❼ Adatsor törlése megerősítő kérdés után.

