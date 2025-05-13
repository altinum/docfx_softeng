# 2. ZH - alfa



## 🅐 UI keret létrehozása 

❶ Hozz létre egy Forms alapú alkalmazást. Az induláskor megjelenő űrlap bal oldalán helyezz el három gombot, és egy panelt! 

❷ A Panel kerete legyen vékony vonal. 

❸ A Panel az űrlap átméretezésekor kövesse az űrlap méretét! 

❹ Adj négy `UserControl`-t is a projekthez, elnevezésük tetszőleges! A következő feladat blokkokat ezekre a vezérlőkre kell majd megvalósítani. 

❺ A gombok megnyomására ürítsd a panel tartalmát, és helyezd el a gombhoz tartozó `UserControl`-t úgy, hogy kitöltse a panel teljes területét átméretezéskor is. 



## 🅑 UserControl1 : CSV állomány beolvasása

A [autok.txt](autok.txt) fájlban található adatokat kell egy `DataGridView`-ben megjeleníteni. 

A fájl felépítése:

|                   |                                        |      |
| ----------------- | -------------------------------------- | ---- |
| `AutoID`          | az autó azonosítója                    |      |
| `Modell`          | az autó modellje, pl: X7               |      |
| `Gyarto `         | az autót gyártó cég, pl: BMW           |      |
| `Evjarat `        | az autó gyártási éve                   |      |
| `Uzemanyag  `     | milyen típusú üzemanyag való az autóba |      |
| `TeljesitmenyHP ` | az autó teljesítménye lóerőben         |      |

❶ A csv állományt tedd be a projektbe, és másoltasd a futtatható állomány mellé **-=VAGY=-** a fálj legyen `OpenFileDialog` segítségével kitallózható!

❷ Adj a projekthez egy osztályt, amely leképezi az állomány egy sorát!

❸ A program legyen képes megnyitni az állományt, és a sorait felolvasni egy `BindingList` típusú, `UserControl1` osztály szintjén létrehozott listába, majd ezeket megjeleníteni `BindingSource`-on keresztül egy `DataGridView`-ban. A lehetséges hibákat kezeld! 

![image1](image1.png)



## 🅒 UserControl1 : új rekord rögzítése

❶ Felugró ablakon keresztül legyen lehetőség új sor rögzítésére!



![image6](image6.png)

## 🅓 UserControl1 : LINQ lekérdezések

Hozz létre egy 'Érekességek' gombot, amelyre felugrik egy MessageBox, ami a következő kérdésekre ad nekünk választ:

- A felsorolt autók közül ❶ **melyik gyártónak van a legerősebb autója** lóerők szempontjából, és ❷ **hány lóerős** az adott autó?

- A listában több BMW típusú jármű is található.  ❸ **Hány darab** van és ❹**átlagosan milyen erősek** (lóerő) a listában szereplő BMW autók?

![image7](image7.png)

## Ⓔ UserControl2 : LINQ lekérdezések