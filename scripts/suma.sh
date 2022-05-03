#!/bin/bash
numero='^[0-9]+$'
sum=0

#comprovació de que s'han indicat arguments
if [[ $# != 0 ]]; then
    #bucle per realitzar la comprovació de que cada argument és un número
    for arg in "$@"
    do
        #comprovació de que els arguments són números
        if [[ $arg =~ $numero ]]; then
            #realització de la suma
	    sum=$(($sum+$arg))
            total=$sum
        else
            echo "L'argument $arg no és un número. Utilitza arguments númerics."
	        exit 1
        fi
    done
    echo "La suma de tots els nombres rebuts per parametre és: $total"

#missatge de sortida si no han indicat arguments
else
    echo "Has d'indicar els arguments amb els que vols treballar"
fi