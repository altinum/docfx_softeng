# XML & XPATH

Online is kipóbálható: [Online Xpath / Css Selector tester](https://scrapfly.io/web-scraping-tools/css-xpath-tester)



Az XML dokumentum fel

# XML Declaration

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
```

The typical information in the XML declaration part includes:

- Version of XML.
- Encoding used for characters.
- Standalone declaration (optional).



```
/html/body
```

```
/html/body/a
```

```
//a
```

````
/html/body//a
````

```
/html/body//a[@href]
```

```
/html/body//a[(@href) and (@accesskey)]
```

```
/html/body//a[contains(@accesskey,'z')]
```

## NF1 - Atomicity

A practical example for non-atomic values is a filed containing XML or JSON code. According to Codd's answer to the question it violates NF1:

| ProductKey | Name       | Price   | CategoryKey | HardwareSpecs                                                |
| ---------- | ---------- | ------- | ----------- | ------------------------------------------------------------ |
| 1          | Laptop     | 1200.00 | 1           | `<Hardware><CPU>Intel i7</CPU><RAM>16GB</RAM><Storage>512GB SSD</Storage><Graphics>NVIDIA GTX 1650</Graphics></Hardware>` |
| 2          | Smartphone | 700.00  | 1           | `<Hardware><CPU>Snapdragon 888</CPU><RAM>8GB</RAM><Storage>128GB</Storage><Camera>108MP</Camera></Hardware>` |
| 3          | Tablet     | 250.00  | 1           | `<Hardware><CPU>Apple A14</CPU><RAM>4GB</RAM><Storage>64GB</Storage><Display>10.2 inch</Display></Hardware>` |
| 4          | Headphones | 150.00  | 1           | `<Hardware><Type>Over-Ear</Type><Wireless>Yes</Wireless><BatteryLife>20 hours</BatteryLife><NoiseCancelling>Yes</NoiseCancelling></Hardware>` |

TSQL can query into XML directly:

```sql
SELECT *
FROM Products
WHERE HardwareSpecs.exist('/Hardware/Wireless[text()="Yes"]') = 1;
```

Splitting Addresses to atomic values can be challenging



## XPATH in C#

``` csharp
using System;
using System.Xml.Linq;
using System.Xml.XPath; // 👈 Needed for XPath extensions

class Program
{
    static void Main()
    {
        string xml = @"
            <books>
                <book id='1'>
                    <title>The Hobbit</title>
                    <author>Tolkien</author>
                </book>
                <book id='2'>
                    <title>1984</title>
                    <author>Orwell</author>
                </book>
            </books>";

        XDocument doc = XDocument.Parse(xml);

        // Select a single element via XPath
        XElement book = doc.XPathSelectElement("//book[@id='2']");
        Console.WriteLine(book.Element("title").Value); // Output: 1984

        // Select multiple elements
        foreach (var title in doc.XPathSelectElements("//book/title"))
        {
            Console.WriteLine(title.Value);
        }
    }
}
```

