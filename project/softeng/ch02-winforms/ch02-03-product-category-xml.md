---
id: xml
---

# Kategóriák mentése XML dokumentumba

## XML építése C#-ban

XML dokumentumok kezelésére több osztály is létezik, mi az `XDocument` -et használjuk. Ez a LINQ (Language Integrated Query) alapú megközelítés XML kezelésére. Nagyobb rugalmasságot nyújt a DOM alapú a régebbi `XmlDocument`-hez képest, és a LINQ szintaxisát használja az elemek eléréséhez és módosításához.

❶ Így lehet létrehozni egy XML dokumnetumot:

``` csharp
XDocument xdoc = new XDocument();
```

&#10103; Érdemes rögtön az elején megcsinálni a deklarációs részt:

```cs
XDocument xdoc = new XDocument();

* XDeclaration xdecl = new XDeclaration("1.0", "utf-8", "yes");
* xdoc.Declaration = xdecl;
```

Ebből lesz ez a sor az XML-ben:
```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
```

&#10104; Egy gyökérelem létrehozásával érdemes kezdeni, melyet a dokumnetumhoz adunk:

```
XDocument xdoc = new XDocument();

XDeclaration xdecl = new XDeclaration("1.0", "utf-8", "yes");
xdoc.Declaration = xdecl;

XElement root = new XElement("gyökér");
xdoc.Add(root);
```

&#10105; Minden `XElement` bővíthető:

- Másik `XElement`-el -- ezek lesznek a gyermekei
- `XAttribute`-al
- `XText`-el, ez lesz a _text content_-je az elementnek

Mintakódban ez így néz ki:

```csharp
XElement node = new XElement("mintaelement");

XAttribute testAttribute = new XAttribute("mintaattribútum", "attribótum értéke");
node.Add(testAttribute);

//Igy is lehet
node.SetAttributeValue("mintaattribútum2", "attribótum értéke";

//10 gyermek hozzáadása
for(int i=0;i<10;i++)
{
	XElement childNode = new XElement("child");
	node.Add(childNode);
}
```

> [!WARNING]
> Element és attribútum nevében nem lehet betűköz!

&#10106; Az `XElement` -nek van egy ilyen konstruktora is, de ez most nem kell:

```csharp
XDocument xdoc = new XDocument(
	new XElement("root",                 // Root node
		new XElement("parent",           // Parent element
			new XAttribute("attr1", "value1"),   // First attribute
			new XAttribute("attr2", "value2"),   // Second attribute
			new XElement("child", "Child text")  // Child element with text
		),
		new XElement("textNode", "Some text content") // Text node as a separate element
	)
);
```

&#10107; Végeztetül a mentés is nagyon egyszerű:

``` csharp
xdoc.Save("minta.xml");
```

De lehet teszteléshez egyszerűbben is:

```csharp
MessageBox.Show(xdoc.ToString());
```



## Feladat gyakorlatra

Bővítsd a helyi menüt egy _XML mentése_ gobbal, és mentsd le XML fába a kategóriákat!

- Használj `SaveFileDialog`-ot a mentés helyének kiválasztására
- Nézd át a rekurzív algoritmust, amit a `TreeView` építéséhez használtunk
- Ha kész vagy, mentsd a kategóriákhoz tartozó termékeket is!

A megoldás javasolt lépései:
- Hozz létre a `ContextMenuStrip`-ben egy új menüpontot, és rendelj hozzá eseménykiszolgálót!
- Az eseménykiszolgálóban csak
  - Hozz létre egy `XDocumnet`-et,
  - adj hozzá deklarációt,
  - hozz létre egy gyökér elemet "kategoriak" néven, és ezt add a dokumnetumhoz,
  - végül mentsd le a dokumnetumot, vagy lenelítsd meg az XML-t `MessageBox.Show()`-al.
- Ezután érdemes megpróbálni lekérdezni LINQ-val a főkategóriákat, és minden főkategóriához létrehozni egy-egy `XElement`-et, amit hozzáadsz a gyökérhaz.
- Végezetül a `TreeView`-t felépítő rekurzív függvény mintájára el lehet készíteni az alkategóriákat felépítőt.
- Esetleg használható két egymásba ágyazott `foreach` is, de ez csak két szintű kategóriabontást tud kezelni. 


Valami ilyesmi lesz az eredmény -- még termékek nélkül:

``` xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<Kategoriak>
  <Kategoria KategoriaId="2" Nev="Divat">
    <Kategoria KategoriaId="9" Nev="Férfi Ruházat" />
    <Kategoria KategoriaId="10" Nev="Nõi Ruházat" />
    <Kategoria KategoriaId="18" Nev="Gyerek Ruházat" />
  </Kategoria>
  <Kategoria KategoriaId="3" Nev="Otthon és Kert">
    <Kategoria KategoriaId="11" Nev="Kerti Eszközök" />
    <Kategoria KategoriaId="12" Nev="Bútorok" />
    <Kategoria KategoriaId="19" Nev="Konyhai Eszközök" />
  </Kategoria>
  <Kategoria KategoriaId="4" Nev="Szépségápolás">
    <Kategoria KategoriaId="13" Nev="Arcápolás" />
    <Kategoria KategoriaId="14" Nev="Hajápolás" />
    <Kategoria KategoriaId="20" Nev="Smink Termékek" />
  </Kategoria>
  <Kategoria KategoriaId="5" Nev="Sport és Szabadidõ">
    <Kategoria KategoriaId="15" Nev="Fitnesz Eszközök" />
    <Kategoria KategoriaId="16" Nev="Kültéri Sportok" />
    <Kategoria KategoriaId="21" Nev="Hobbi és Játékok" />
  </Kategoria>
  <Kategoria KategoriaId="6" Nev="Mobiltelefonok" />
  <Kategoria KategoriaId="7" Nev="Laptopok" />
  <Kategoria KategoriaId="8" Nev="TV-k" />
  <Kategoria KategoriaId="17" Nev="Okosórák" />
</Kategoriak>
```

