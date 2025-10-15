---
id: xml
---

# 5.3 Termékek mentése XML dokumentumba

## XML építése C#-ban - elméleti összefoglaló

> [!tip]
>
> Ezt az összefoglalót csak fusd át, a gyakorlati feladat ezután következik. 

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

```csharp
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

Bővítsd a gombsort egy _XML mentése_ gobbal, mely XML fába menti a kategóriákat! Használj `SaveFileDialog`-ot a mentés helyének kiválasztására

A megoldás javasolt lépései:
- Hozzd létre az új gombot , és rendelj hozzá eseménykiszolgálót!

- Az eseménykiszolgálóban csak
  - Hozz létre egy `XDocumnet`-et,
  - adj hozzá deklarációt,
  - hozz létre egy gyökér elemet "products" néven, és ezt add a dokumnetumhoz,
  - végül mentsd le a dokumnetumot, vagy lenelítsd meg az XML-t `MessageBox.Show()`-al.
  
- Ezután érdemes megpróbálni lekérdezni LINQ-val a termékeket, és minden termékhez létrehozni egy-egy `XElement`-et, amit hozzáadsz a gyökérhez.

  


Valami ilyesmi lesz az eredmény:

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<Products>
  <Product>
    <ProductSk>1</ProductSk>
    <EAN>5901234123451</EAN>
    <ProductName>Samsung Galaxy S24</ProductName>
    <Description>Flagship Android smartphone with 128GB storage</Description>
    <NetPrice>299000</NetPrice>
    <VatPercent>27</VatPercent>
    <GrossPrice>379730</GrossPrice>
    <StockQuantity>24</StockQuantity>
    <CategoryFk>5</CategoryFk>
  </Product>
  <Product>
    <ProductSk>2</ProductSk>
    <EAN>5901234123452</EAN>
    <ProductName>Apple iPhone 15</ProductName>
    <Description>Latest iPhone with A17 Bionic chip and OLED display</Description>
    <NetPrice>399000</NetPrice>
    <VatPercent>27</VatPercent>
    <GrossPrice>506730</GrossPrice>
    <StockQuantity>18</StockQuantity>
    <CategoryFk>5</CategoryFk>
  </Product>
  <Product>
    <ProductSk>3</ProductSk>
    <EAN>5901234123453</EAN>
    <ProductName>Dell XPS 13</ProductName>
    <Description>Ultra-thin laptop with Intel i7 processor and 16GB RAM</Description>
    <NetPrice>499000</NetPrice>
    <VatPercent>27</VatPercent>
    <GrossPrice>633730</GrossPrice>
    <StockQuantity>12</StockQuantity>
    <CategoryFk>6</CategoryFk>
  </Product>
  <Product>
...
```

Vagy ilyen:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Products>
  <Product 
    ProductSk="1"
    EAN="5901234123451"
    ProductName="Samsung Galaxy S24"
    Description="Flagship Android smartphone with 128GB storage"
    NetPrice="299000"
    VatPercent="27"
    GrossPrice="379730"
    StockQuantity="24"
    CategoryFk="5" />
  
  <Product 
    ProductSk="2"
    EAN="5901234123452"
    ProductName="Apple iPhone 15"
    Description="Latest iPhone with A17 Bionic chip and OLED display"
    NetPrice="399000"
    VatPercent="27"
    GrossPrice="506730"
    StockQuantity="18"
    CategoryFk="5" />
...
```



Keresés XPath-al az elsőben:

```
/Products/Product[ProductSk='3']
```

és a másodikban:

```
/Products/Product[@ProductSk='3']
```

