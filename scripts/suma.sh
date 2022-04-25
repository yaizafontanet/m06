#!/bin/bash
numero='^[0-9]+$'
sum=0

#comprovació de que s'han indicat arguments
if [$# != 0]; then
    #bucle per realitzar la comprovació de que cada argument és un número
    for arg in "$@"
    do
        #comprovació de que els arguments són números
        if [$arg =~ $numero]; then
            #bucle per realitzar la suma dels arguments
            for n in "$@"
            do
                sum=$(($sum+$n))
            done

            total = $sum
            echo "La suma de tots els nombres rebuts per parametre és: $total "

        else
            echo "L'argument $arg no és un número. Utilitza arguments númerics."
        fi
    done
#missatge de sortida si no han indicat arguments
else
    echo "Has d'indicar els arguments amb els que vols treballar"
fi