# A gyakorlat áttekintése

Ebben a gyakorlatban továbbfejlesztjük a `TermekKategoriaForm` funkcionalitását, hogy lehetővé tegyük a felhasználók számára a termékkategóriák kezelését egy könnyen használható felületen keresztül. A fő célunk az, hogy megvalósítsuk az alapvető CRUD (Create, Read, Update, Delete) műveleteket a termékkategóriákra vonatkozóan, valamint biztosítsuk a felhasználóbarát interakciót a `TreeView` vezérlővel.

## Helyi menü létrehozása `ContextMenuStrip`-pel

Célok és követelmények:
- Gyors hozzáférés biztosítása a gyakori műveletekhez
- Intuitív felhasználói élmény kialakítása
- A `TreeView` vezérlő funkcionalitásának kiterjesztése

A `ContextMenuStrip` egy hatékony eszköz a Windows Forms alkalmazásokban, amely lehetővé teszi, hogy helyi menüt (más néven jobb klikk menüt) adjunk hozzá a vezérlőkhöz. Ez a menü akkor jelenik meg, amikor a felhasználó jobb egérgombbal kattint a vezérlőre.

1. Adj hozzá egy új `ContextMenuStrip` vezérlőt az űrlaphoz. Nevezd el `contextMenuStripKategoria`-nak.

2. A _Properties_ ablakban kattints a `ContextMenuStrip` Items tulajdonságára, majd add hozzá az menüelemeket. (Az elemek hozzáadására használhatod a tervezőt is.)
   - Átnevezés
   - Új főkategória
   - Új alkategória
   - Törlés
   - Frissítés

3. Állítsd be a `TreeView` `ContextMenuStrip` tulajdonságát az újonnan létrehozott `contextMenuStripKategoria`-ra.

Tipp: A menüelemek létrehozása után ne felejtsd el beállítani a megfelelő eseménykezelőket is. Ezt megteheted a Properties ablakban az egyes menüelemek Click eseményére duplán kattintva.

## Átnevezés funkció

Célok és követelmények:
- Lehetővé tenni a felhasználó számára a kategória nevének módosítását
- Az átnevezés azonnal tükröződjön mind a TreeView-ban, mind az adatbázisban
- Biztosítani a felhasználóbarát in-place szerkesztést

Az átnevezés funkció megvalósításához használhatjuk a `TreeView` beépített címkeszerkesztési képességét!

1. A `TreeView` vezérlő szerencsére beépítve tartalmaz lehetőséget a `TreeNode` feliratának szerkesztésére.Állítsd be a `TreeView` `LabelEdit` tulajdonságát true-ra. (Elvben alapértelmezetten _true_.)

2. Rendelj eseménykiszolgálót `ContextMenuStrip` ` Átnevezés` menüpontjához!

   Fontos megjegyezni, hogy a `TreeView` éppen kiválasztott `TreeNode`-ját a `SelectedNode` tulajdonságán keresztül lehet elérni. Ez a tulajdonság viszont felvehet `null` értéket is, ha épp nincs egyetlen node sem kiválasztva.

   Ellenőrizzétek, hogy az éppen kiválasztott mód nem `null`-e, és ha nem, hívjátok meg a kiválasztott node `BeginEdit()` metódusát. Ha az alkalmazást most futtatjátok, át lehet nevezni a node-okat, de a változás nem kerül vissza az adatbázisba.

3. A következő lépésben el kell fogni azt az eseményt, amikor a felhasználó befejezi a node átnevezését. A kérdésre a .NET dokumentációja és az AI és megadja a választ: a `TreeView` `AfterLabelEdit` eseményéhez kell esemény kiszolgálót rendelni. 

Tipp: Ne feledd, hogy a TreeNode Tag tulajdonságában tároltuk el a kapcsolódó TermekKategoria objektumot. Ezt használhatod fel a frissítéshez.

Az eseménykiszolgálóban `e.Label`-ből tudhatjuk meg a node új nevét. Mielőtt továbbmennénk egy feltétellel biztosítsuk, hogy az `e.Label` nem `null`, és nem üres string.

Ha a fenti feltétel teljesül, szerezzük meg az éppen átnevezett node-ra mutató referenciát:

``` csharp
TermekKategoria átvevezettKategoria = (TermekKategoria)e.Node.Tag;
```

Az `átvevezettKategoria` arra az objektumra mutat, amely az adatbázisban a kategóriához tartozó rekordot képviseli, és még a fa felépítésekor rendeltük hozzá a `TreeNote` `Tag` tulajdonságához.

Állítsuk be az éppen átnevezett kategória nevét az `e.Node`-ban kapott új névre, majd mentsük a változásokat az adatbázisba: 

```
_context.SaveChanges();
```



## Új főkategória létrehozása

Célok és követelmények:

- Mivel ez nem egy „klasszikus” fa, amelynek csak egy, nem törölhető gyökéreleme van, külön kell választani az **új főkategória** és az **új alkategória** létrehozására szolgáló menüpontot. 

- Új főkategória hozzáadása az adatbázishoz és a TreeView-hoz
- Az új kategória azonnal jelenjen meg a fa struktúra gyökerében
- Lehetőség biztosítása az új kategória azonnali átnevezésére

Az új főkategória létrehozása során egy új `TermekKategoria` objektumot kell létrehoznunk és hozzáadnunk az adatbázishoz, valamint egy új `TreeNode`-ot a TreeView gyökeréhez. 

1. Implementáld az "Új főkategória" menüpont Click eseménykezelőjét:
   - Hozz létre egy új `TermekKategoria` objektumot
   - Add hozzá az objektumot a `_context.TermekKategoria` `DbSet`-hez
   - Mentsd el a változásokat az adatbázisba
   - Hozz létre egy új `TreeNode`-ot is az új kategóriához
   - Add hozzá a `TreeNode`-ot a `TreeView` **gyökeréhez**
   - Opcionálisan: Kezdeményezd az új csomópont azonnali szerkesztését -- `BeginEdit()`

Tipp: Az új kategória létrehozása után érdemes lehet azonnal kiválasztani és szerkeszthetővé tenni az új csomópontot, hogy a felhasználó rögtön megadhassa a kívánt nevet.

## Új alkategória létrehozása

Célok és követelmények:
- Új alkategória hozzáadása a kiválasztott kategória alá
- Az új kategória azonnal jelenjen meg a fa struktúrában a megfelelő helyen
- A szülő-gyermek kapcsolat megfelelő kezelése az adatbázisban

Az új alkategória létrehozása hasonló az új főkategória létrehozásához, de figyelembe kell vennünk a szülő-gyermek kapcsolatot.

Ne feledd ellenőrizni, hogy van-e kiválasztott csomópont, mielőtt megpróbálsz új alkategóriát létrehozni!

Ha van kiválasztott node a fában (a `treeViewKategoriak.SelectedNode` nem `null`), meg kell szerezni a szülő adatbázisrekord `SzuloKategoriaId`-ját:

```csharp
TermekKategoria kategoria = new TermekKategoria();
kategoria.Nev = "Új kategória";
kategoria.SzuloKategoriaId = ((TermekKategoria)treeViewKategoriak.SelectedNode.Tag).SzuloKategoriaId;
```



## Frissítés

Célok és követelmények:

A frissítés funkció lehetővé teszi, hogy a felhasználó újra betöltse az adatokat az adatbázisból, ezáltal szinkronizálva a TreeView-t a legfrissebb adatokkal.

1. Implementáld a "Frissítés" menüpont Click eseménykezelőjét:
   - Hívd meg a korábban implementált `LoadKategoriak()` metódust

Tipp: A TreeView állapotának megőrzéséhez érdemes lehet egy külön metódust írni, amely rekurzívan végigjárja a fa struktúrát és eltárolja a kibontott csomópontok adatait.

## Törlés

Célok és követelmények:
- Kiválasztott kategória törlése az adatbázisból és a `TreeView`-ból
- A törlés csak akkor legyen lehetséges, ha a kategóriának nincs alkategóriája 
- Megerősítő üzenet megjelenítése a törlés előtt
- A törölt kategóriához tartozó termékek kezelése (opcionális)

A törlés funkció implementálása során különös figyelmet kell fordítanunk az adatintegritás megőrzésére, azaz egyszerre töröljünk az adatbázisból és a `TreeView`-ból.

1. Implementáld a "Törlés" menüpont Click eseménykezelőjét:
   - Ellenőrizd, hogy van-e kiválasztott csomópont. Ha nincs, nincs mit tenni. 
   
   - Ha van, ellenőrizd, hogy a kiválasztott kategóriának vannak-e alkategóriái. (Az éppen kiválasztot node gyermekeinek száma: 0 
   
     Segítésgül:
     `treeViewKategoriak.SelectedNode`: éppen kiválasztott node a fában
   
     `treeViewKategoriak.SelectedNode.Nodes`: éppen kiválasztott node gyermekeinek gyűjteménye
   
     `treeViewKategoriak.SelectedNode.Nodes.Count`: éppen kiválasztott node gyermekeinek száma
   
     Ha nincsenek alkategóriái, jelenítsd meg egy megerősítő üzenetet
   
   - Ha a felhasználó megerősíti a törlést:
     - Távolítsd el a kategóriát az adatbázisból
     - Mentsd el a változásokat
     - Távolítsd el a megfelelő csomópontot a TreeView-ból
   
     Segítségül:
     `treeViewKategoriak.SelectedNode.Tag`: éppen kiválasztott node-hoz tartozó `TermekKategoria` objektum `object`-ként
   
     `(TermekKategoria)treeViewKategoriak.SelectedNode.Tag)`: éppen kiválasztott node-hoz tartozó `TermekKategoria` 
   
     A fából a node eltávolítása aránylag könnyű:
     `treeViewKategoriak.Nodes.Remove(treeViewKategoriak.SelectedNode);`
   
     

Tipp: A törlés előtt érdemes ellenőrizni, hogy vannak-e termékek a törölni kívánt kategóriában. Ha vannak, döntsd el, hogyan kezeled ezt a helyzetet (pl. hibaüzenet megjelenítése, vagy a termékek áthelyezése más kategóriába).

## Jobb egérgomb működésének kényelmesebbé tétele

Rontja a felhasználói élményt, hogy a jobb egérgomb lenyomásan nem választja ki az alatta lévő elemet. Ezen segít az alábbi, ChatGPT-vel generált kód:

```csharp
private void treeViewKategoriak_NodeMouseClick(object sender, TreeNodeMouseClickEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                treeViewKategoriak.SelectedNode = e.Node;
                contextMenuStrip1.Show(treeViewKategoriak, e.Location);
            }
        }
```



Ezekkel a funkciókkal egy komplett, felhasználóbarát termékkategória-kezelő rendszert hoztál létre. A gyakorlat során megtanultad, hogyan lehet hatékonyan kezelni a hierarchikus adatstruktúrákat Windows Forms környezetben, valamint hogyan lehet összekapcsolni a felhasználói felületet az adatbázisműveletekkel. Ne feledd, hogy a hibakezelés és a felhasználói visszajelzések fontos részei egy professzionális alkalmazásnak, így érdemes ezekre is figyelmet fordítani a fejlesztés során.
