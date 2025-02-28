# Rövid összefoglaló az elemi változókról

Ezeket érdemes megtanulni - a számtípusoknál legalább a nagyságrendeket.

| Típus     | Memóriaigény | Leírás                                                       |
| --------- | ------------ | ------------------------------------------------------------ |
| `byte`    | 1 byte       | Előjel nélküli 8 bites egész szám(0..255)                    |
| `char`    | 2            | Egy Unicode karakter                                         |
| `bool`    | 1            | Logikai típus, értéke igaz(1 vagy True)vagy hamis(0 vagy False) |
| `sbyte`   | 1            | Előjeles, 8 bites egész szám (-128..127)                     |
| `short`   | 2            | Előjeles, 16 bites egész szám (-32768..32767)                |
| `ushort`  | 2            | Előjel nélküli, 16 bites egész szám(0..65535)                |
| `int`     | 4            | Előjeles, 32 bites egész szám (–2147483648.. 2147483647).    |
| `uint`    | 4            | Előjel nélküli, 32 bites egész szám(0..4294967295)           |
| `float`   | 4            | Egyszeres pontosságú lebegőpontos szám (kb. 7 decimális számjegy pontosság) |
| `double`  | 8            | Kétszeres pontosságú lebegőpontos szám (kb. 15-16 decimális számjegy pontosság) |
| `decimal` | 16           | Fix pontosságú 28+1 jegyű szám                               |
| `long`    | 8            | Előjeles, 64 bites egész szám                                |
| `ulong`   | 8            | Előjel nélküli, 64 bites egész szám                          |
| `string`  | N/A          | Unicode karakterek szekvenciája                              |

## Összefoglaló és tippek

A `Console.WriteLine()` a VisualStudio output ablakába ír. Ha nem találod, és ki akarod próbálni a példákat, próbáld így:  

```csharp
MessageBox.Show(_változónév_.ToString());
```

> [!TIP]
> A Visual Studio-n belül vannak beépített shortcutok a gyakran használt elemekre. Például cw+tab+tab=Console.WriteLine();

---

A különböző típusok közötti konverzió implicit (írásban nem jelölt) módon akkor működik csak, ha a céltípus értékkészlete tágabb, mint a forrás kifejezésé. Például  `int`  típusú változóba tehetek  `byte`  típusú értéket, vagy  `long`-ba  `int`-et. A  következő program helyes:

```csharp
byte a=1; 
int b=a;
```

---

Ha egy tágabb értékkészletű típusban szereplő értéket szeretnénk egy szűkebben tárolni, adatvesztés léphet fel, ezért a programban ki kell kényszeríteni a típuskonverziót:  

```csharp
int a=1; 
byte b=(byte)a;  
```

Ezt a kikényszerített típuskonverziót hívjuk  **cast**-olásnak.

---

Ha lebegőpontos (tört) típust castolok egésszé, a tizedesek levágásra kerülnek. Pl. a  

```csharp
double a=3.9; 
int b=(int)a;
```

futtatása után `b` változó értéke `3` lesz.

---

Kerekíteni a  `Math.Round()`  függvénnyel lehet.

---

Az egész típusok esetén nem számegyeneseben kell gondolkodni, hanem számkörökben. Az egész típusok körbefordulnak. Ha például egy  `byte`  típusú változó értékkészletének legnagyobb értékét veszi fel (pl. `byte b=255;`), és ezt még növeljük egyel (`b++;`), értéke az értékkészlet legkisebb értéke lesz (0). Ugyanez működik fordítva is. A `byte.MaxValue`  kifejezés megadja a byte típusban tárolható legnagyobb értéket. Ez működik minden elemi változótípusra.

---

0,1 tízes szám bináris formában: 0,0001100110011... (végtelen periodikus számjegyekkel). Ezért a számokat kettes számrendszerbeli normál alakban tároló `double` és `float` típusok nem tudják kerekítési hiba nélkül tárolni, mivel az alap ábrázolásáro szolgáló számjegyek száma véges. 

> [!TIP]
>
> Kérdezd a ChatGPT-t:
>
> - Váltsd át a 0.1-et kettes számrendszerbe!
> - Az alábbi kódrészletben mit jelent az "m" betű? decimal d = 0.1m; 

---



A  `double`  felvehet  **végtelen**  és  **negatív végtelen**  értéket is. A  `double`  értéke lehet  **nem szám**  is: két végtelen hányadosa esetén például  **nem szám**  az eredmény.

---

Nagyon kell vigyázni: a C-alapú nyelvekben az `=` operátor értékadást jelöl. (Például `int a = 1;`) Feltétekben, ahol két érték közti ekvivalenciát vizsgálunk, a `==` operátort kell használni. 

```csharp
if (a==13) MessageBox.Show("Bad day");
```

## Videók az előadáshoz

🎬 "Learning by Doing" megközelítés

> [!Video https://storage.altinum.hu/szoft1/S1_BEV_03b_leadning_by_doing.m4v]

 Az alábbi videók segítsét nyújhatnak a ZH előtti ismétléshez.

🎬 Elemi változók

> [!Video https://storage.altinum.hu/szoft1/S1_BEV_valtozok_es_tipusok-1.m4v]

🎬 Változók viselkedése -1.rész

> [!Video https://storage.altinum.hu/szoft1/S1_BEV_7_valtozok1.m4v]

🎬 Változók viselkedése -2.rész

> [!Video https://storage.altinum.hu/szoft1/S1_BEV_7_valtozok2.mp4]

