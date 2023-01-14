# Subiectul 1

a. Completați funcția `subsetAA()` din fișierul `s1_a.d` astfel încăt aceasta să primească 2 array-uri asociative (hashtable-uri) ale căror chei sunt de tip `string`, iar valorile de tip `int` și să întoarcă dacă al 2-lea hashtable este **inclus** în primul.
Spunem că un un dicționar `b` este inclus în alt dicționar `b` dacă fiecare cheie din `b` se găsește și în `a`, iar valoarea fiecăreia dintre aceste chei este mai mică sau egală în `b` decât în `a`.
Urmăriți exemplele din blocul `unittest` pentru a înțelege mai bine funcționalitatea dorită.

b. Analizați funcția `foo()` și blocul `unittest` din fișierul `s1_b.d`.
Completați **doar definiția variabiei `a`** din `unittest` astfel încât `assert()`-ul din acesta să nu genereze erori.
Nu este permisă modificarea funcției `bar()` sau a `assert()`-urilor.

c. Modificați semnătura și completați funcția `modifyValue()` din fișierul `s1_c.d` astfel încât aceasta să primească și să modifice o valoare fie de tip întreg (`int`, `long`, `byte`, `char` etc.), fie una de tip floating point (`float`, `double`, etc.).
În caz contrar, funcția trebuie să nu compileze.
Când funcția primește un parametru de tip întreg, aceasta îl va nega.
Ătunci când parametrul este un număr în virgulă mobilă, funcția îl va împărți la 2.

Modificați semnătura și corpul funcției `modifyTree()` astfel încât aceasta să primească un argument de tim `TreeNode` și să apeleze funcția `modifyValue()` pe valorile stocate în fiecare dintre nodurile arborelui.

Nu este permisă crearea mai multor funcții `modifyValue()` sau `modifyTree()`.
Urmăriți exemplele din blocul `unittest` pentru a înțelege mai bine funcționalitatea dorită.
Folosiți cât mai multe funcții din biblioteca standard [Phobos](https://dlang.org/phobos/).
