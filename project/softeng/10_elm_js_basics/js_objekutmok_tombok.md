# Javascript: objektumok, tömbök
## A gyakorlat célja

Ezen a gyakorlaton egy statikus fájlból töltünk le egy kérdéslistát, melynek kérdéseit egy listában jelenítjük meg. 

## Elméleti összefoglaló
### Videó

[JS objektumok, tömbök, fetch](https://kzgzdiag426.blob.core.windows.net/szoft2/jsbasics2.m4v) -- a heti feladat megoldásához szükséges alapokat összefoglaló videó [37 perc]. 

A JS-ben járatos kollégák ugorhatnak rögtön a feladatmegoldásra!

### Kódminták a videóból

Mindenek előtt: a konzol üzenetek színezhetők, így könnyebb lehet megkülönböztetni a különféle üzeneteket. 
``` js
console.log('%c Oh my heavens! ', 'background: #222; color: #bada55');
```
Objektum létrehozása és objektumon belül változók = tulajdonságok felvétele:
``` js
var o1 = new Object()
o1.kNév = "John"
o1.vNév = "Bull"
o1.teljesNév = function() {return this.kNév + " " + this.vNév;}
```
Példa a referenciaként kezelt objektumokra: `o1` és `o2` a memóriában ugyanarra az objektumra mutatnak:
``` js
var o1 =  new  Object()
o1.kNév = "John"
var o2 = o1
o2.kNév = "Jane"
> o1.knév
< "Jane"
```
Objektum másolása:
``` js
o3 = Object.assign({}, o1)
```
Tömb létrehozása és feltöltése:
``` js
var a1 = new Array() //Elemek számát nem kell megkötni
a1[0] = "nulladik"
a1[1] = "első"
a1[10] = "tizes" //lehet "sparse" is, nem muszáj folyamatonak lennie
a1.push(o1) //Elem lehet objektum is, a push a végére szúr új elemet
a1.splice(0) //A splice elemet töröl
```
JSON stringek előállítása és feldolgozása
``` js
var s = JSON.stringify(o1)
var o4 = JSON.parse(s)
```
Tömbök illetve objektumok létrehozás JSON kóddal:
``` js
var o5 = {} //üres objektum
var a2 = [] //üres tömb
var o6 = { név : "John", age : 23 } //Tömb kulcsokkal és értékekkel
var o6 = { "név" : "John", "age" : 23 } //Így, idézőjelbe tett kulcsokkal is szabályos
a3 = ["a","b","c"] //Lista inicialializálása értékekkel
```

Példa a `fetch` használatára: 
``` html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <ol id="ide"></ol>
    <script>
        fetch("/questions.json")
            .then(r => r.json())
            .then(d => adatÉrkezett(d));

        function adatÉrkezett(adat) {
            let ide = document.getElementById("ide");
            console.log(`${adat.length} kérdés érketett`)

            for (var i = 0; i < adat.length; i++) {
                console.log(adat[i].questionText)
                let elem = document.createElement("li")
                elem.innerHTML = adat[i].questionText
                ide.appendChild(elem)
            }
        }
    </script>
</body>
</html>
```


## Feladatsor

A múlt órai Git repóban dolgozunk tovább, itt hozzátok létre az új `.html` állományt! A leadás is Git-ben lesz.

(+/-) Hozz létre egy `geek.js` nevű fájlt a `wwwroot`ban -- ide fogunk dolgozni. 

(+/-) A `wwwroot/geek.html` töltse be a `geek.js`-t!

(+/-) Hozz létre és linkelj  `.css`-t is!

``` html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link href="stilus.css" rel="stylesheet" />
    <script src="/geek.js"></script> //A solution explorer-ből be is húzható
</head>
...
```

(+/-) Hozz létre egy `jokes.json` nevű fájlt is a `wwwroot`ban. Ebben tároljuk a kérdéslistát , melyet [innét](https://github.com/elijahmanor/devpun/blob/master/jokes.json) tölthetsz le. (A fájlnévnek nincs jelentősége, csak következetesen használjuk.)

Részlet a `jokes.json`-ből:

``` json
[
  {
    "text": "q. How do you comfort a JavaScript bug? a. You console it.",
    "question": "How do you comfort a JavaScript bug?",
    "answer": "You console it.",
    "author": "elijahmanor",
    "created": "09/06/2013",
    "tags": ["javascript"],
    "rating": 1
  },
  {
    "text": "q. Why did the child component have such great self-esteem? a. Because its parent kept giving it `props`!",
    "question": "Why did the child component have such great self-esteem?",
    "answer": "Because its parent kept giving it `props`!",
    "author": "elijahmanor",
    "created": "05/22/2017",
    "tags": ["javascript", "react"],
    "rating": 1
  },
    ...
 ]
```


(+/-) Hozz létre egy `viccek` nevű változót az oldal scope-jában. Ide kerül majd a kérdéseket tartalmazó lista. Nem is kell neki kezdőérték.

``` js
var viccek;
```

(+/-) Készíts egy `letöltés()` függvényt! A letöltés függvény egy `fetch`-el töltse le a `jokes.json` tartalmát:
	- A letöltés végén dolgozd fel a kapott JSON-t, majd
	- hívj meg egy `letöltésBefejeződött(k)`  nevű függvényt, ami eltárolja a `kérdések` nevű változóban a kérdéseket tartalmazó tömböt!

``` js
fetch('/jokes.json')
    .then(response => response.json())
    .then(data => letöltésBefejeződött(data)
);

function letöltésBefejeződött(d) {
    console.log("Sikeres letöltés")
    console.log(d)
    viccek = d;
}
```
Az eredményt érdemes a böngésző konzolában ellenőrizni!

(+/-) A  `letöltés()` függvény kerüljön meghívásra, amint az oldal betöltődött!   (`window.onload`)

(+/-) A `letöltésBefejeződött(d)` függvényben `for` ciklussal járd be a `viccek` tömböt, és hozz létre egy-egy DOM elemet minden vicchez!

