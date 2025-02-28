# Heti feladatok 

Ezen a héten az első négy feladatot kell felépíteni egy közös Solution-ben, és feltölteni Moodle-be. Az 1. ZH-n feladatok az 1-4 feladatokhoz hasonlóan _step-by-step_ formában lesznek megfogalmazva. 


### 1. feladat 
# [feladat](#tab/fel1)

❶ Hozz létre KÓDBÓL `gomb` néven egy példányt a `Button` osztályból, és add hozzá az űrlap vezérlőinek listájához!

❷  Állíts be méretet a gombnak!

❸  Állítsd be a gomb `Left` és `Top` tulajdonságát úgy, hogy pont középre kerüljön az ablakban! 

> [!TIP]
>
> Az űrlap kódjában a `Width` és a `Height` tulajdonság az ablak szélességére illetve magasságára hivatkozik, de a mértetbe beleértendő a keret is. A belső méret a `ClientRectangle.Width` illetve a `ClientRectangle.Height` tulajdonságokon keresztül kérdezhető le. 

❹  Rakj ki 10 gombot egymás mellé az űrlapra `for` ciklusból!

❺  Egészítsd ki az előző feladatot úgy, hogy 10x10 gomb legyen kint!

❻  Csinálj szorzótáblát; jelenítsd meg a gombokon a számokat.

❼  Származtass `VillogóGomb` néven osztályt a `Button` osztályból! (A kódot írhatod a `Form1` osztály alá, de adhatsz új osztályt a projekthez.)

❽  Hozz létre konstruktort a `VillogóGomb` osztályban! (ctor - tab - tab)

❾  A konstruktorban rendelj eseménykiszolgálót a `MouseEnter` és a `MouseLeave` eseményekhez!  (+=  - tab - tab)

❿  Az eseménykiszolgálókban állítsd be a gomb színét. 

⓫  Cseréld le a szorzótábla gombjait `VillogóGomb`-ra!

⓬  😁
# [megoldás](#tab/meg1)
(📽1-3. pontok megoldása
> [!Video https://storage.altinum.hu/szoft1/S1_BEV_P1_1-3.m4v]
(📽 5-6. pontok megoldása
> [!Video https://storage.altinum.hu/szoft1/S1_BEV_P1_5-6.m4v]
(📽 7. pont megoldása
> [!Video https://storage.altinum.hu/szoft1/S1_BEV_P1_7a1.m4v]
(📽 7. pont megoldása, kiegészítés
> [!Video https://storage.altinum.hu/szoft1/S1_BEV_P1_7a2.m4v]
(📽 8-12. pontok megoldása
> [!Video https://storage.altinum.hu/szoft1/S1_BEV_P1_8-12.m4v]

```csharp
class VillogoGomb : Button
{
    public VillogoGomb()
    {
        BackColor = Color.Fuchsia;
        MouseEnter += VillogoGomb_MouseEnter;
        MouseLeave += VillogoGomb_MouseLeave;
    }

    private void VillogoGomb_MouseLeave(object sender, EventArgs e)
    {
        BackColor = SystemColors.ButtonFace;
    }

    private void VillogoGomb_MouseEnter(object sender, EventArgs e)
    {
        BackColor = Color.Yellow;
    }
}
```
---

### 2. feladat: színeződő gomb - önálló munka

❶  Származtass osztályt a `Button` osztályból `SzíneződőGomb` néven!

❷  Konstruktorbán a `SzíneződőGomb` méretezze át magát 20x20 pixelesre a `Button` osztálytól örökölt `Height` és `Width` tulajdonságának beállításával!

❸  A `SzíneződőGomb` konstruktorában rendelj eseménykiszolgáló függvényt a kattintás (`Click`) eseményhez!

❹ Kattintásra a `SzíneződőGomb` színezze magát fukszia színűre.

❺ A már felépített szorzótáblát írd át úgy, hogy `SzíneződőGomb`-okból épüljön fel!

### 3. feladat: számoló gomb
# [feladat](#tab/fel3)
❶ Származtass osztályt a `Button` osztályból `SzámolóGomb` néven!

❷ A `SzámolóGomb` osztályt bővítsd konstruktorral!

❸  Konstruktorbán a `SzámolóGomb` méretezze át magát 20x20 pixelesre a `Button` osztálytól örökölt Height és Width tulajdonságának beállításával!

❹  Bővítsd a `SzámolóGomb` osztályt `int` típusú „`szám`” nevű mezővel!

❺  A `SzámolóGomb` konstruktorában rendelj eseménykiszolgáló függvényt a kattintás (`Click`) eseményhez!

❻  Az előbb létrehozott eseménykiszolgáló függvényben növeld egyel a `szám` mező értékét, majd jelenítsd meg az új értéket a gomb felirataként (`Text` tulajdonság beállítása.)

❼  Végül helyezz el az űrlapon 10x10 számológombot.

❽  Módosítsd a `SzámolóGomb` osztályt úgy, hogy az 1-es értékről induljon a számolás!

❾  Módosítsd a `SzámolóGomb` osztályt úgy, hogy az 5-ös szám után az 1-es jelenjen meg!


📽 1-7. pontok megoldása
> [!Video https://storage.altinum.hu/szoft1/S1_BEV_P3_1-7.m4v]
(📽 változók érvenyessége
> [!Video https://storage.altinum.hu/szoft1/S1_BEV_P3_7lifecycle.m4v]
(📽 8-9. pont megoldása
> [!Video https://storage.altinum.hu/szoft1/S1_BEV_P3_08-9.m4v]

# [megoldás](#tab/meg3)
A `SzámolóGomb` osztály:

```csharp
class SzámolóGomb : Button
{
    int szám;

    public SzámolóGomb()
    {            
        Width = 20;
        Height = 20;
        Click += SzámolóGomb_Click;
        szám = 1;
        Text = szám.ToString();
    }

    private void SzámolóGomb_Click(object sender, EventArgs e)
    {
        szám++;
        if (szám==6)
        {
            szám = 1;
        }
        Text = szám.ToString();
    }
}
```

A `Form1` osztály `Load` eseményéhez tartozó eseménykiszolgáló:

```csharp
private void Form1_Load(object sender, EventArgs e)
{
    for (int s = 0; s < 10; s++)
    {
        for (int o = 0; o < 10; o++)
        {
            SzámolóGomb számolóGomb = new SzámolóGomb();
            számolóGomb.Height = 20;
            számolóGomb.Width = 20;
            számolóGomb.Top = s * 20;
            számolóGomb.Left = o * 20;

            Controls.Add(számolóGomb);
        }
    }
}
```
---
### 4. feladat: gombok kirakása véletlenszerűen
# [feladat](#tab/fel4)
❶  Szervezz `for` ciklust 100 iterációs lépéssel. Minden lépésben rakj ki egy gombot a képernyőn véletlenszerű, de az ablakba eső pozícióba.

❷  A méret is legyen véletlen.

❸  A szín is.

> [!TIP]
>
> A színt így is be lehet állítani:  `gomb.BackColor = Color.FromArgb(255, 0, 0);`. A paraméterként átadott 0 és 255 közé eső értékek rendre a piros, zöld, illetve kék összetevőt határozzák meg. 

# [megoldás](#tab/meg4)
Gombok véletlenszerű kirajzolása

``` csharp
// A véletlenszámokhoz szükség van egy generátorra (RNG = Random Number Generator)
// AZ alábbi sor csak ezt hozza létre, tényleges véletlen számot még nem generál
// A konstruktoron kívül érdemes példányosítani, mert ebből csak 1-et akarunk létrehozni 
// (Bonyolultabb problémák esetén van értelme többet létrehozni, de ahhoz nagyon érteni kell a működésüket, egyszerűbb követni azt a szabályt, hogy ebből MINDIG csak 1 legyen)
Random rng = new Random();

public Form1()
{
    InitializeComponent();

    // Ciklus, ami létrehozza majd a gombokat
    for (int i = 0; i < 1000; i++)
    {
        // A tényleges randomszám generáláshoz a random generátor Next metódusát kell használnunk
        // Ennek két bemenő paramétere van, melyek megadják, hogy mely két érték között legyen a véletlenszám
        // Vigyázat a felső korlát exkluzív, tehát ezt az értéket már nem veheti fel a véletlenszám
        // Pl.: rng.Next(1, 10) esetén 1-től 9-ig bármelyik számot kaphatjuk eredményként, de a 10-et már nem
        // Az első paraméter elhagyható, ekkor a minimum 0 lesz és csak a maximumot kell megadni
        // Ha tört számra van szükség, akkor a NextDouble() metódus visszaad egy 0 és 1 közti tizedes törtet
        // Ezt felszorozva bármilyen két érték közti racionális számot elő lehet állítani

        // Az átláthatóság érdekében létrehozunk változókat a véletlen számok tárolására
        // Ezeknek a változóknak létrehozása kihagyható, az értékadásuk egyszerűen beírható oda, ahol később hivatkozunk rájuk

        // Aktuális gomb mérete
        // Ebben a példában a gomb szélessége és magassága véletlen szerűen 20 és 50 között van               
        int width = rng.Next(20, 51);
        int height = rng.Next(20, 51);

        // Aktuális gomb pozíciója
        // A pozíciók minimuma nulla, ezért használható a Next azon változata, ahol csak a maximum értéket kell megadni
        // A szélesség maximum értéke a Form szélessége, de ebből le kell vonni az aktuális gomb szélességét, különben előfordulhatna, hogy a gomb kilóg a Form-ról
        // A ClientSize.Width a Form belső méretét adja míg a sima Width a külső keretet is számba veszi ezért pontatlanabb
        int left = rng.Next(this.ClientSize.Width - width);
        int top = rng.Next(this.ClientSize.Height - height);

        // Aktuális gomb színe
        // A szín meghatározásához az RGB kódra van szükségünk
        // Ez három darab 0-255 közti számból áll
        int r = rng.Next(256);
        int g = rng.Next(256);
        int b = rng.Next(256);

        // A véletlen számok legenerálása után egyszerűen létrehozható a gomb
        Button gomb = new Button();
        gomb.Width = width;
        gomb.Height = height;
        gomb.Left = left;
        gomb.Top = top;
        gomb.BackColor = Color.FromArgb(r, g, b);
        this.Controls.Add(gomb);
    }
}
```
---



### 5. Gyakorló feladat: gombok kirakása háromszögben (ismétlés)

Rakd ki egy 10x10-es gombokból álló mátrix gombjait úgy, hogy csak a főátlóban lévők és a főátló alattiak jelenjenek meg!
>[!TIP]
>Itt azt érdemes vizsgálni egy feltételes elágazásban az belső ciklus törzsében, hogy az oszlop száma kisebb-e a sor számánál. 

### 6. Gyakorló feladat: gombok kirakása "karácsonyfában" (ismétlés)

❶ Helyezz el gombokat 10 sorban úgy, hogy minden sorban egyel több gomb legyen: az elsőbe egy, a másodikban kettő, a harmadikban három, stb. Tipp: a belső ciklus bennmaradási feltételében felhasználhatod a külső ciklus ciklusváltozójának értékét.

❷ Minden gomb legyen 20x20 pixel méretű. 

❸ Told el a gombok `Left` tulajdonságon keresztül beállított vízszintes koordinátáját úgy, hogy a gombokból álló háromszög bal széle az ablak középvonalába essen. Tipp: az ablak szélességét a `Width` tulajdonságán keresztül tudod kiolvasni. Ha a gombok `Left` tulajdonságának beállításánál `Width/2` értéket hozzáadsz a korábban számított értékhez.

❹ Minden sorban egyre jobban húzd balra a koordinátákat úgy, hogy kijöjjön a karácsonyfa.
