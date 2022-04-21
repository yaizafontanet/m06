#!/bin/bash
#Feu un shell script que sumi tots els números rebuts com a arguments i mostri el resultat per pantalla amb el missatge “La suma de tots els nombres rebuts per paràmetre és: <total>.” El nombre de paràmetres és indeterminat i cal comprovar que són números.

arguments = $#
sum=0


#bucle per realitzar la suma dels arguments
for n in "$@"
do
    sum=$(($sum+$n))
done

total = $sum
echo "La suma de tots els nombres rebuts per parametre és: $total "