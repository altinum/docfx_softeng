# Adatbázistervezési feladat — Egyéni műkorcsolya verseny

## Feladatleírás

Egy egyéni műkorcsolya verseny adatbázisát kell megtervezni. A verseny során a versenyzők két fordulóban mutatják be gyakorlataikat (rövid program és kűr). A teljesítményt több bíró pontozza előre meghatározott kritériumok szerint (például technikai elemek, művészi kifejezés, korcsolyázó készség). 

A cél: adatmodell készítése Mermaid diagram formájában. 

## Üzleti szabályok

1. A versenyzők egyénileg indulnak és egy vagy két fordulóban szerepelnek (Short Program és Free Skate).

2. A bírók a versenyzők pontjait kritériumonként adják meg (például TES: Technical Element Score, PCS: Program Component Score).

3. Minden pontozás rögzíti, hogy melyik bíró melyik fordulóban melyik versenyzőnek milyen kritériumra adott értékelést.

4. Pontszám tartománya: 0.00–10.00 (tíz századra kerekítve).

5. Egy bíró ugyanazon versenyzőre, ugyanabban a fordulóban, ugyanarra a kritériumra csak egyszer adhat pontot.