#!/bin/bash
#Exercise 2: Crea un fitxer dades.txt amb els numeros 1 2 3 4 5.
#Modifica l’script anterior per pasar-li com a argument un fitxer (FILE).
#modifica el “for I in FILE“.
#Executa’l.

FILE="dades.txt"

for i in $FILE
do
        echo "Welcome number: $i"
done