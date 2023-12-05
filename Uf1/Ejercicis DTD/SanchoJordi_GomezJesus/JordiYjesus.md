#***Markdown DTD***



---


###Què és DTD.


Es un conjunt de regles utilitzades en llenguatges de marcatge com **HTML, XML i SGML** per definir la estructura, elements, atributs i validesa d'un document. Són utilitzades per assegurar que els documents creats en aquests llenguatges compleixen amb les regles establertes.


###Perquè serveix.


La seva funció bàsica és la descripció de l'estructura de dades en **XML, SGML**... per a fer ús de una estructura comuna i mantenir la consistència entre tots els documents que utilitzin la mateixa DTD.


---
###Sintaxis i estructura

**Exemple**:


```
    <!-- Definiciones Elementos-->
    <!ELEMENT VentaDeCoches (Coches, Compradores)>
    <!ELEMENT Coches (Coche*)>
    <!ELEMENT Coche (NombreCoche, Precios, Caracteristicas, Publicacion, Imagen?)>
 
   
    <!-- Definiciones Atributos-->
    <!ATTLIST Coche certificado (si|no) #REQUIRED>
    <!ATTLIST Precios IvaIncluido (si|no) #REQUIRED>
    <!ATTLIST Caracteristicas yeargarantia CDATA #REQUIRED>


    <!-- Definiciones Entidades-->
    <!ENTITY gaso "Gasolina">
    <!ENTITY dies "Diesel">


```
---


###Altres aspectes que considereu interessants.


- **Abstracció de les DTD**: permetin l'ús de més d'una DTD o altres esquemes simultàniament.


- **Definicions de mòduls**: es poden dividir les DTD en mòduls per fer-les més fàcils de gestionar i reutilitzar. Això és especialment útil en projectes grans amb molts documents XML relacionats.


- **Validació**: La validació pot ser realitzada pel programari que processa el document XML o mitjançant eines externes com un validador DTD.

#####**Podem definir el DTD en l'XML**

Tenim dues formes de definir el **DTD** en el **XML**.

- **DTD intern**: Es defineix directament dins del propi document XML, utilitzant l'element **<!DOCTYPE>**. Aquesta definició DTD es troba a la capçalera del document XML i especifica les regles per a aquell document en particular.
######***Exemple de DTD intern***

~~~
<!DOCTYPE llibre [
  <!ELEMENT llibre (títol, autor, any)>
  <!ELEMENT títol (#PCDATA)>
  <!ELEMENT autor (#PCDATA)>
  <!ELEMENT any (#PCDATA)>
]>
~~~


- **DTD extern**: Es defineix en un fitxer separat amb extensió ".dtd" i es fa referència a aquest fitxer des del document XML mitjançant una declaració DOCTYPE. Aquest enfocament permet reutilitzar les definicions DTD en diversos documents XML.


######***Fitxer "llibre.dtd***
~~~
<!ELEMENT llibre (títol, autor, any)>
<!ELEMENT títol (#PCDATA)>
<!ELEMENT autor (#PCDATA)>
<!ELEMENT any (#PCDATA)>
~~~
######***Document XML amb referència a DTD extern***
~~~
<!DOCTYPE llibre SYSTEM "llibre.dtd">
<llibre>
  <títol>El Gran Gatsby</títol>
  <autor>F. Scott Fitzgerald</autor>
  <any>1925</any>
</llibre>
~~~
