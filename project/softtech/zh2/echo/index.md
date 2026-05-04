# 2. ZH - echo

> [!NOTE]
>
> A **Solution neve kezdődjön a STE2 karaktersorozattal**, majd folytatódjon a NEPTUN kóddal. A teljes projekt könyvtárat Moodle-rendszeren keresztül kell beadni ZIP állományban. Javasoljuk, hogy a projektet lokális meghajtón hozd létre és ne az S: meghajtóra. A leadás egyben a jelenléti ív. Pontot csak olyan kódrészletre lehet kapni, ami megfelelően lefordul és a program futtatása során ellátja a szerepét. **A munkaidő 60 perc**.

## Feldolgozandó adatok

A [kavezo.txt](kavezo.txt) fájlban található adatokat kell egy `DataGridView`-ben megjeleníteni. 

A fájl felépítése:

|                   |                                                    |      |
| ----------------- | -------------------------------------------------- | ---- |
| `KavezoID  `      | a kávézó azonosítója                               |      |
| `Nev    `         | a kávézó neve                                      |      |
| `Varos `          | a város amiben található a kávézó                  |      |
| `NapiLatogatok `  | az a szám ahányan megfordulnak a kávézóban naponta |      |
| `ProfitEZREuro  ` | a kávézó heti nyeresége ezer euróban               |      |

❶ Hozz létre projektet az alábbi névvel: `STE2[neptun kód]`

> [!IMPORTANT]
>
> Másképp elnevezett projekteket nem fogadunk el!
>
> 

❷ A csv állományt tedd be a projektbe, és másoltasd a futtatható állomány mellé!

❸ Adj a projekthez egy osztályt, amely leképezi az állomány egy sorát!

❹ A program legyen képes megnyitni az állományt, és a sorait felolvasni egy `BindingList` típusú, `Form1` osztály szintjén létrehozott listába, majd ezeket megjeleníteni `BindingSource`-on keresztül egy `DataGridView`-ban. A lehetséges hibákat kezeld! A betöltés művelet történjen gombnyomásra! Használhatod a CSV Helper csomagot, de megoldhatod másképp is.

![image1](image1.png)

❺ Az alkalmzás legyen képes csv állományba menteni a `Form1` osztályban lévő listát. A mentés helye SaveFileDialog-ban legyen kiválasztható!

❻ Mentés közben kezeld a hibákat (try-catch)! 

❼ Hozz létre egy gombot, melynek segítségével a rácsban az éppen kiválasztott sor törölhető. A törlés csak megerősítő kérdés után történjen meg.
Ellenőrizd, hogy van-e kiválasztott sor!

❽ Gombnyomásra felugró ablakon keresztül legyen lehetőség új sor rögzítésére!



![image6](image6.png)



Hozz létre egy 'Érekességek' gombot, amelyre felugrik egy MessageBox, ami a következő kérdésekre ad nekünk választ:

🅐 Melyik kávézónak a legmagasabb a profitja és 🅑 melyik városban található ez a kávézó?

🅒 Átlagosan mennyi a látogatottsága azoknak a kávézóknak amiknek a profitja kevesebb mint ezer euró?

🅔 Hány kávézó van összesen?

![image7](image7.png)



