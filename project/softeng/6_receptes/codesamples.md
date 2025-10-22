

# Kódminták az előadásról

## Új rekord hozzáadása

A példában így nézett ki az adatkötés:

```csharp
public partial class Form2 : Form
{
    KajaContext context = new KajaContext();
    BindingList<Nyersanyagok> nyersanyagokBindingList = new BindingList<Nyersanyagok>();
    
    public Form2()
    {
        InitializeComponent();
    }

    private void Form2_Load(object sender, EventArgs e)
    {
        context.Nyersanyagok.Load();
        nyersanyagokBindingList = context.Nyersanyagok.Local.ToBindingList();
        nyersanyagokBindingSource.DataSource = nyersanyagokBindingList;
    }
```

Az adatközés tehát három rétegben valsult meg:

1. `context.Nyersanyagok.Local`, melybe a `context.Nyersanyagok.Load();`metódussal letöltöttük a teljes táblát a szerverről.
2. `BindingList<Nyersanyagok> nyersanyagokBindingList` - ide a `nyersanyagokBindingList = context.Nyersanyagok.Local.ToBindingList();` sorral kerültek az adatok.
3. `nyersanyagokBindingSource`

A `nyersanyagokBindingSource`-hoz volt kötve az űrlapon a `DataGridView`

Betettünk egy egyszerű mentést is, most kivételkezelés nélkül:

```csharp
private void button1_Click(object sender, EventArgs e)
{
    nyersanyagokBindingSource.EndEdit();
    context.SaveChanges();
    //nyersanyagokBindingSource.ResetBindings(false);
    //nyersanyagokBindingSource.ResetCurrentItem();
}
```

A megjegyzésben lévő sorok segítenek a mentés során keletkezett változásokat megjeleníteni a rácsban, mint például ha egy automatikusan számozott mező értéket kap a szerveren. 

### #1 Új rekord felvétele a `local`-on keresztül

```csharp
private void buttonAddViaContext_Click(object sender, EventArgs e)
{
    Nyersanyagok nyersanyag = new Nyersanyagok
    {
        NyersanyagNev = "Új ctx nyersanyag",
        Egysegar = 1,
        MennyisegiEgysegId = 1
    };

    context.Nyersanyagok.Add(nyersanyag);
}
```

Az adatkötés miatt a változás véigfut minden egymáshoz kötött objekumon, és a végén a rácsban megjelenik az új rekord.

### #2 Új rekord felvétele a `BindingList`-en keresztül

```csharp
private void buttonAddViaBindinglist_Click(object sender, EventArgs e)
{
    Nyersanyagok nyersanyag = new Nyersanyagok
    {
        NyersanyagNev = "Új bl nyersanyag",
        Egysegar = 1,
        MennyisegiEgysegId = 1
    };

    nyersanyagokBindingList.Add(nyersanyag);
}
```

Az eredmény hasonló, menteni is lehet, és meg is jelenik.

### #3 Új rekord felvétele a `BindingSource`-on keresztül

```csharp
private void buttonAddViaBindingSource_Click(object sender, EventArgs e)
{
    Nyersanyagok nyersanyag = new Nyersanyagok
    {
        NyersanyagNev = "Új bs nyersanyag",
        Egysegar = 1,
        MennyisegiEgysegId = 1
    };

    nyersanyagokBindingSource.Add(nyersanyag);
}
```

Az eredmény hasonló, menteni is lehet, és meg is jelenik a rácsban.

> [!TIP]
>
> Ha adatkötött vezérlőket használsz, mindegy melyik megoldást választod!

### #4 Új rekord felvétele közvetlenül a `context.Nyersanyagok`-on keresztül

```csharp
private void buttonAddToContext_Click(object sender, EventArgs e)
{
    Nyersanyagok nyersanyag = new Nyersanyagok
    {
        NyersanyagNev = "Új ctx nyersanyag",
        Egysegar = 1,
        MennyisegiEgysegId = 1
    };

    context.Nyersanyagok.Add(nyersanyag);
}
```

Ez a megközelítés is működik, csak most nem a `context.Nyersanyagok.Local`-hoz adunk, hanem a `context.Nyersanyagok`-hoz!

## Rekord törlése

## #1 példa: utolsó törlése

Ez az első példa az utolsó elemet törli az adatbázisból:

```csharp
private void buttonDelFromContext_Click(object sender, EventArgs e)
{
    var törlendő = nyersanyagokBindingList.Last();

    context.Nyersanyagok.Remove(törlendő);
}
```

> [!TIP]
>
> Itt is igaz, ami a hozzáadásra, a törlést is megvalósíthatod négyféle módon.

### #2 példa: ID-vel adott elem törlése

A következő kódminta a 13-as ID-jű nyersanyagot törli az adatbázisból:

```csharp
private void buttonDelFromContext_Click(object sender, EventArgs e)
{
    var törlendő = (from x in context.Nyersanyagok
                   where x.NyersanyagId == 13
                   select x).FirstOrDefault();
     
    context.Nyersanyagok.Remove(törlendő);
}
```

Itt három lépést hajtunk végre:

1. LINQ-val kiválasztjuk a törlendő objektumot
2. A LINQ egy gyűjteményt ad vissza, annak ellenére, hogy mi tudjuk, hogy a gyüjteménynek vagy üres, vagy egy eleme van. A `Remove` metódus csak egy elemet vesz át paraméterként. Ezen segít a `FirstOrDefault()`
3. A végén elvégezzük a törlést.

A változások természetesen csaka `SavaChanges()` hatására kerülnek az adatbázisba.

## Módosítás

Az alábbi példa a `BindingSource`-ban éppen kiválasztott elem nevét teszi nagybetűssé:

```csharp
private void buttonModifyCurrent_Click(object sender, EventArgs e)
{
    var kiválasztott = nyersanyagokBindingSource.Current as Nyersanyagok;

    kiválasztott.NyersanyagNev = kiválasztott.NyersanyagNev.ToUpper();
}
```

