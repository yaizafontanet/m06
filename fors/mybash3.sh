#!/bin/bash
# Exercise 4: Utilitza el condicional amb format similar a C següent..
# if ((<some C-like conditional>))
# then
#     <commands>
# fi
# Modifica el codi anterior per crear a dins les carpetes “lab03”, “lab06”, “lab09”, “lab12” un fitxer que es digui “paritat.txt” i que a dins posi “aquesta carpeta es multiple de 3”.

for ((i=0;i<12;i++))
do
    if (( $i%3==0 ));
    then
        mkdir lab$1
        echo "Aquesta carpeta es multiple de 3" > /lab$i/paritat.txt
        echo "S'ha creat la carpeta lab$i amb l'arxiu paritat.txt ." 
    fi
done