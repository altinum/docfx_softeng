# LINQ lekérdezések tankönyvtámogatás példán keresztül

## A feladat háttere
A példában egy hallgatói önkormányzatnak készítünk alkalmazást, melynek segítségével szét tudja osztani a rendelkezésre álló tankönyv-támogatási keretösszeget a hallgatók között. Ebben a megközelítésben nem kapnak egységes, egyéni, levásárolható keretet a hallgatók, hanem az összes hallgató minden könyvrendelését összesítik, elosztják a keretösszeget a rendelés összértékével, és így kapják meg az egy forintnyi vásárlásra jutó támogatás összegét. A hallgató rendelésének értékéből és az egy forintra jutó támogatásból számolható a hallgató támogatása. Ha a rendelések összértéke nem éri el a támogatás keretösszegét, akkor az algoritmus szerint a fizetendő összeg lehet negatív is!

Érdekesség: Magyarországon az egészségügy finanszírozása is hasonló megközelítéssel történik. Az egészségügyben felhasználható keretösszeg többé-kevésbé fix. A kórházak által végezhető diagnózisok és beavatkozások mellé az úgynevezett HBCS táblázat egy súlypontot rendel. Az elszámolási időszak végén összesítésre kerül az összes kórház által összegyűjtött összes súlypont, mellyel elosztva a keretösszeget kiszámolható egy súlypont értéke forintban. A rendszer sajátossága miatt a kórházak „teljesítménypörgetéssel” próbálkozhatnak, ami a súlypontok forintértékét lefelé nyomja. Ennek megakadályozására vezették be a teljesítményvolumen-korlátokat, melyben a kórházak számára maximálva van bizonyos beavatkozásokból az időszakonként finanszírozottan elvégezhető esetszám.

Az egészségügyre rendelkezésre álló pénzügyi keret (a Nemzeti Egészségbiztosítási Alapkezelő, NEAK által) gyakorlatilag korlátozott.

Mivel a keretösszeg nem nő automatikusan a teljesítménnyel, a **súlyszám értéke (Ft/súlyszám)** változik:

- ha országosan **több beavatkozást** jelentenek le, akkor **csökken** a súlyszám forintértéke,
- ha kevesebbet, akkor **nő**.

A gyakorlat célja olyan kliens építése, melyben beállítható, hogy milyen tankönyveket rendeltek az egyes hallgatók. A szűrő és összegző funkciók LINQ-lekérdezések segítségével készülnek el.

## 1. Adatbázis felépítése és ORM

![kep2]

**Saját adatbázis felépítése** (opcionális)

Dolgozhatsz a saját Azure-os szervereden, vagy hozz létre egy lokális adatbázist a projektedben! Töltsd le, és futtasd adatbázist felépítő SQL-t: [TextbookSupport_CREATE_FILL.txt](TextbookSupport_CREATE_FILL.txt)

**Oktatói TextbookSupport példaadatbázis használata**

Ez az adatbázis csak az egyetemi IP-tartományból érhető el!

|              | |
|-             |-|
|Szerver       |bit.uni-corvinus.hu
|Felhasználónév|hallgato
|Jelszó        |Password123
|Adatbázis     |TextbookSupport



## 2. ORM osztályok létrehozása

Telepítsd a szükséges NuGet csomagokat, és készítsd el az ORM osztályokat. 

```powershell
Scaffold-DbContext "Server=bit.uni-corvinus.hu;Database=TextbookSupport;User Id=hallgato;Password=Password123;TrustServerCertificate=True;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -Context TextbookSupportContext -DataAnnotations -Force
```

## 3. Felhasználói felület építése

◉ Valósítsd meg az alábbi űrlapot. Érdemes megfelelően elnevezni az űrlap elemeit. Baloldalt szerepelnek a hallgatók, középen a rendeléseik és jobbra a rendelhető tankönyvek.

![kep3]

## 4. Hallgatók és Tankönyvek lekérdezése és szűrése

◉ Az előző órai gyakorlat mintájára kérdezd le a két oldalsó `ListBox` tartalmát az adatbázisból, és valósítsd meg hozzájuk a szűrést a felettük levő `TextBox`-ok tartalma alapján!

A baloldali listába a `Student`, a jobboldaliba a `Textbook` tábla elemei kerüljenek!

- "Add new Object Data" a `Student` tábla egy sorát leképző `Studnet` osztályra, amiből elkészül a `studentBindingSource`.
- `listStudent` `DisplayMemeber` tulajdonságának beállítása a _Propoerties_ panelen keresztül.
- Ugyanezt kell eljátszani jobb oldali `ListBox`-al és a `TextBook` osztállyal. 

Ezután következhet a két lista szőrt adatottal történő feltöltése. A kódrészlet csak önellenőrözésre szolgál, próbáld meg magadtól megírni! Két külön metódust szerepel a mintában `GetStudents()` és  `GetTextbooks()` néven, mivel a szűrést az űrlap megnyitásakor és a szűrő szövegdoboz tartalmának változásakor is érdemes elévgezni. 
```csharp
public partial class Form1 : Form
{
    TextbookSupportContext context = new TextbookSupportContext();
    public Form1()
    {
        InitializeComponent();
    }

    private void Form1_Load(object sender, EventArgs e)
    {
        GetStudents();
        GetTextbooks();
    }

    private void GetStudents()
    {
        studentBindingSource.DataSource =
                (
                    from s in context.Students
                    where s.Name!.Contains(txtStudent.Text)
                    select s
                ).ToList();
    }
  
    private void studentTextBox_TextChanged(object sender, EventArgs e)
    {
        GetStudents();
    }

```

### 5. A Kiválasztott hallgató rendelésének lekérdezése

A Kiválasztott hallgató "megszerzése" után két módszert mutatunk be megrendelések lekérdezésére és megjelenítésére. A második lesz a szép :)

### 5.1 A Kiválasztott hallgató megszerzése

Az előadáson bemutatott feladatban egy `DataGridView`-ban kellett megjeleníteni az adott fogáshoz tartozó receptbejegyzéseket. Most ennek mintájára kell megjeleníteni a hallgatókhoz tartozó rendeléseket a középső `ListBox`-ban. Az átadott adatforrás most is pontosan ugyanolyan lesz, mint a `DataGridView` esetén.

Rendelj eseménykiszolgálót a `studentBindingSource` `CurrentChanged` eseményéhez, és az eseménykiszolgálóban a `BindingSource` `Current` tulajdonságán keresztül próbáld "megszerezni" az éppen kiválasztott diákhoz tartozó objektumot. Nyivlán `Student` típusú lesz, hiszen a `Student` osztály képezi le a vonatkozó adatbásitábla egy sorát, így a `studentBindingSource` adatforrásául `Student` típusú elemekből álló gyűjtemény szolgál. 

```csharp
Student currentSrudent = studentBindingSource.Current as Student;
```

Használhatod a `var`-t is, ha lusta vagy:

```csharp
var currentSrudent = studentBindingSource.Current as Student;
```

És castolhatsz a tavaly megszokott módon is:

```csharp
var currentSrudent = (Student)studentBindingSource.Current;
```

Mielőtt tovább mennél, nem árt egy null-check, hiszen nem biztos, hogy lesz kiválasztott diák. Pl. olyan szűrési feltételt ír be a felhasználó, amelynek egyetlen diák sem felel meg:

```csharp
private void studentBindingSource_CurrentChanged(object sender, EventArgs e)
{
    Student currentSrudent = (Student)studentBindingSource.Current;

    if (currentSrudent != null)
    {
    }
}
```

### 5.2a hallgató rendeléseinek listázása anonym osztállyal

Előre is: nem túl elegáns megoldás, de a teljesség igényével mégis ide került. 

```csharp
private void studentBindingSource_CurrentChanged(object sender, EventArgs e)
{
    Student currentStudent = (Student)studentBindingSource.Current;

    if (currentStudent != null)
    {
        var ol = from x in context.Orders
                 where x.StudentFk == currentStudent.StudentId
                 select new
                 {
                     x.OrderSk,
                     x.StudentFk,
                     x.TextbookFkNavigation.Title
                 };
        listOrder.DataSource = ol.ToList();
        listOrder.DisplayMember = "Title";
    }
}
```

A két lekérdezett mezőt egy úgynevezett „névtelen típusú” objektummal fogtuk össze, a `new {…}` kifejezéssel. A `new`kulcsszó után nincs oszálynév, ha megfigyeled. Ez az objektum már tartalmazza a rendelt könyvek címeit, így megadhatjuk a `Title`-t a `listOrder` `DisplayMember` mezőjeként (a konstruktorban). Viszont "kézzel" kell beállítani a `DisplayMemeber`-t, hiszen ezzel a megközelítéssel tervezőt nem tudunk hazsnálni: 

```csharp
listOrder.DisplayMember = "Title";
```

### 5.2b hallgató rendeléseinek listázása nevesített osztállyal

Ez lesz az igazán elegáns megközelítés. Csináljuk egy saját osztályt, amiben benne van minden olyan tulajdonság, amit meg szeretnénk jeleníteni, vagy tárolni szeretnénk. Az `OrderSk` is nagyon fontos, mert ha törölni szertetnénk a rendelési tételt, szükség lesz rá!!!

```c#
public class OrderWithTitle
{
    public string Title { get; set; }
    public int OrderSk { get; set; }
}
```

Build után ⚠ az "Add new Object Data" segítségével fel lehet venni a listába az új osztályt, és `BindingSource` is gyártható belőle `orderWithTitleBindingSource` néven, mely a megrendelt könyveket tartalmazó lista adatforrásául szolgálhat. A kód alig különbözik az előző példához képest:

``` csharp
private void studentBindingSource_CurrentChanged(object sender, EventArgs e)
{
    Student currentStudent = (Student)studentBindingSource.Current;

    if (currentStudent != null)
    {
        var ol = from x in context.Orders
                 where x.StudentFk == currentStudent.StudentId
                 select new OrderWithTitle
                 {
                     OrderSk = x.OrderSk,                            
                     Title = x.TextbookFkNavigation.Title
                 };
        orderWithTitleBindingSource.DataSource = ol.ToList();
    }
}
```

A `DisplayMember` itt már beállítható tervezőből is.

◉ Ezt a kódot is szervezd ki egy külön metódusba (pl.: `GetOrders` néven), és hívd meg az eseménykezelőből! Később még szükség lesz rá, amikor rendelés felvétele vagy törlése után újra kell olvasni a listát.

## 6. Rendelés hozzáadása

◉ A balra mutató gombhoz rendelj eseménykezelőt! A gombra kattintva hozz létre egy új példányt az `Order` osztályból, és állítsd be a `StudentFK` és a `TextbookFK` tulajdonságait a kiválasztott diák, illetve a kiválasztott könyv saját kulcsának értékére!
◉ Add hozzá az új `Order` rekordot az adatbázishoz, és 
◉  mentsd a változtatásokat! 
◉ Mivel előfordulhat, hogy egyszerre többen módosítjátok majd az adatbázist, érdemes a mentést `try-catch` blokkba helyezni, és hibaüzenetet dobni, ha nem sikerül.
◉ A mentés után hívd meg az előző pontban létrehozott `GetOrders` metódust! Enélkül nem jelennek meg a hozzáadott rendelések. Mivel nem adat-kötött objektumaink vannak, nekünk kell újra lekérdezni a megváltozott adathalmazt.

> [!IMPORTANT]
>
> Ez a kódrészlet azért tud működni, mert a két oldalsó lista adatforrása nem pusztán a diákok neveit és a könyvek címeit tartalmazza, hanem a teljes entitásokat, amelyből csak a nevet és a címet jelenítjük meg a `DisplayMember` tulajdonságok beállításával. Ha az első feladatrészben a hallgatók lekérdezése kapcsán `select s` helyett `select s.Name` szerepelne, akkor is a helyes adatok jelennének meg, de ebben az esetben nem állna rendelkezésre a `StudentId` vagy a `TextbookID` az új megrendelés felvételéhez. 

```csharp
private void buttonAdd_Click(object sender, EventArgs e)
{
    //Megszerezzük a diák és a könyv kulcsát, hogy létre tudjunk hozni egy új rekordot 
    //az Order táblában
    Student student = studentBindingSource.Current as Student;
    Textbook textbook = textbookBindingSource.Current as Textbook;

    //Léterhozzuk az új megrendelést
    Order o = new Order();
    o.StudentFk = student.StudentId;
    o.TextbookFk = textbook.TextbookId;

    //Az új megrendelést felvesszük a táblába
    context.Orders.Add(o);

    try
    {
        context.SaveChanges();
    }
    catch (Exception ex)
    {
        //A releváns hibaüzentet az InnerException-ben van
        MessageBox.Show(ex.InnerException.Message);
    }

    //Újraolvassuk a megrendeléseket
    GetOrders();
}
```

◉ Tegyél be egy null-check-et is, lehet hogy nincs kiválasztott hallgató vagy könyv a hozzáadás gomb megnyomásakkor. 

## 7. Rendelés törlése

◉ A törlés gombhoz tartozó eseménykiszolgálóban így lekérdezhető a listából a `SelectedValue` tulajdonsága, melyben a `ValueMember`-ben tárolt mezőnek megfelelő érték fog szerepelni. Jelen esetben az `OrderSK`. Ez alapján kikereshető az éppen kiválasztott rendelés rekord az adatbázisból.

A törlés után mentsd a módosításokat és hívd meg a `GetOrders`-t!

```csharp
private void buttonRemove_Click(object sender, EventArgs e)
{
    //Szerezzük meg a középső listában kiválasztott objektumot.
    //Tartalmazza az OrderSk értékét is. Direkt így csináltuk!
    var selectedOrderWithTitle = orderWithTitleBindingSource.Current as OrderWithTitle;

    //Ha már meg van az OrderSk, meg lehet keresni a törlendő objektumot
    var orderToDelete = from x in context.Orders
                        where x.OrderSk == selectedOrderWithTitle.OrderSk
                        select x;

    //És akár törölni is lehet
    context.Orders.Remove(orderToDelete.FirstOrDefault());
    context.SaveChanges(); //Try-catch-be persze
    GetOrders();
}
```

> [!tip]
>
> A `FirstOrDefault()` **egy LINQ metódus**, ami a lekérdezés **első elemét** adja vissza — **vagy `null`-t**, ha a lekérdezés **nem talál semmit**.  Az `orderToDelete` akár több elemet is tartalmazhatna, de mivel `OrderSk` egy **egyedi azonosító**, valójában **legfeljebb egy** rekordot ad vissza.



Bónusz: érdemes gondoskodni arról, hogy ne okozzon hibát a programban, ha a törlés gombra kattintva nincs mit törölni.

## 8. Tankönyvtámogatások összege

◉ Az alsó `TextBox`-okba számítsd ki a megfelelő értékeket! A tankönyvtámogatás összegét (bal felső) a felhasználó adja meg. Tehát a `TextBox` tartalmának megváltoztatásakor változnia kell az összegeknek. Azonban a többi szövegdoboz alapján látszik, hogy a rendelések bármilyen változtatása esetén is újra kell számolni néhány értéket.

A `TextBox` értéke legyen alapértelmezetten 100.000 Ft! Rendelj eseménykezelőt a `TextBox` `TextChanged` eseményéhez, és hívd meg belőle a `GetOrders` metódust! A továbbiakban a `GetOrders` metódus végébe dolgozz!

A LINQ lekérdezésekben használhatók az SQL nyelvekből ismert aggregáló függvények (pl.: `Avg`, `Sum`, `Min`, `Max`, `Count`). Az alábbi kód segítségével például kiszámítható a rendelések összértéke:

```csharp
double? orderSum = (from x in context.Orders
                    select x.Textbook.Price).Sum();
```

A kész LINQ lekérdezést zárójelbe téve hívható meg az aggregáló függvény. Előfordulhat, hogy a lekérdezés nem vezet eredményre (pl.: nincs rekord a táblában). Ilyenkor a lekérdezés eredménye `null`, amire a `Sum` függvény szintén `null` értéket ad vissza. Ezért kell a `double?` változó típus. A `sumOfOrders` így egy olyan `double` típusú változó, mely `null` értéket is felvehet.

Ehhez hasonló lekérdezésekkel és egyszerű matematikai műveletekkel határozd meg és írasd ki az alsó négy `TextBox` értékét!

Megoldás - ez a kódrészlet csak önellenőrözésre szolgál, próbáld meg magadtól felépíteni!

```csharp
double aidSum = double.Parse(aidSumTextBox.Text);
double? orderSum = (from x in context.Orders
                    select x.Textbook.Price).Sum();
double? studentSum = (from x in context.Orders
                      where x.StudentFK == student.StudentID
                      select x.Textbook.Price).Sum();

textBox2.Text = orderSum.ToString();
textBox3.Text = studentSum.ToString();
textBox4.Text = (aidSum / orderSum).ToString();
textBox5.Text = (studentSum * aidSum / orderSum).ToString();
```


[kep2]: datamodel.jpg
[kep3]: textbooksupport.png
