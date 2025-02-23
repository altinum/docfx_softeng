# CSS alapok 
[Chrome devtools videó](Chrome_devtools.mp4)

## CSS szabályok helye

CSS szabály három helyre kerülhet:
- A CSS szabályok kerülhetnek a HTML dokumentumba `<style>` tag-ek közé.
- Használhatunk külön fájt. Ha ez utóbbi mellett döntünk, és Visual Studio-ban fejlesztünk, a *Solution Explorer*-ből a .css állományt be lehet húzni a HTML dokumentumba, és automatikusan bekerül a megfelelő hivatkozás. 
- Kerülhetnek a HTML elment `style` attribútumába is. 

Az attribútumon keresztüli stílusbeállítás nem szerencsés. Sokkal szebb, ha a megjelenésre vonatkozó szabályok elkülönülnek a tartalomtól.  

## HTML elemek azonosítása, CSS selector-ok

``` html
<div>
	<div id="gomb1" class="ovális-gomb">Ok</div>
	<div id="gomb2" class="ovális-gomb">Nem ok</div>
</div>
```

A CSS szabályok `:` karakterrel elválasztott **tulajdonság -- tulajdonság-érték** párok, melyek `;`-vel elválasztva kerülnek felsorolásra. Az ún. selector-ok határozzák meg, hogy mire vonatkozzon a szabály. A legfontosabb selectorokat az alábbi példák szemléltetik:

Az összes `<div>` típusú elem háttere legyen fukszia:
``` css
div {
	background-color: fuchsia;
}
```

Az összes olyan elem, ami az `ovális-gomb` osztályban van sorolva, legyen ovális és kék. Az  oszályokra a `.` szelektorral fogalmazhatunk meg szabályokat:
``` css
.ovális-gomb{
	height: 50px;
	border-radius: 25px;
	background-color: blue;
}
```

Fogalmazzunk meg egy-egy szabályt az `gomb1` és a `gomb2` háttérszínére! A `#`  szelektorral egy adott `id`-val rendelkező egyetlen elemre fogalmazhatunk meg szabályokat:
``` css
#gomb1{
	background-color: red;
}
#gomb2{
	background-color: blue;
}
```

## Selector-ok precedenciája

Ha ezeket valaki nem tudja, folyamatos küzdés és frusztráció a fejlesztés, mert általában nem az jelenik meg, amit akar. Az tapasztalat, hogy azok, akik autodidakta módon tanulnak, a Stack Overflow-os példákon keresztül pont ezeket nem ismerik meg, pedig nagyon egyszerű :)

A preferenciára vonatkozó szabályok az alábbiak:
1. Ha valamelyik szabály után `!important` jelölés van, az mindent üt. Pl. `color: fuchsia !important;`
2. Ez után a specificitás kerül figyelembevételre. 
		a. Leginkább egy `id`-val azonosított, konkrét elemre vonatkozó szabály specifikus.
		b. Ezt követi egy adott `class`-ra vonatkozó szabály
		c. Legkevésbé egy adott element típusra vonatkozó szabály specifikus
3. Ha a specificitás megegyezik, a deklaráció sorrendje dönt. Olyan ez mint a végrendelet: a legutolsó számít. 

Más szavakkal: az összes `<div>` típusú elemetre megfogalmazott szabály kevésbé specfikus,  mint ha csak egy adott osztályba tartozó elekre hivatkozunk. 
