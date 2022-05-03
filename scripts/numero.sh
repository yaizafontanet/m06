#!/bin/bash
#Bucle per aturar o no el programa
while :
do
    #Mostra un número aleatori del 1 al 10 per pantalla
    echo $RANDOM

    #Demana a l’usuari si vol sortir
    echo "Vols finalitzar el programa? (S or s)"
    read resposta

    #condició per aturar el programa
    if [[ "$resposta" == "S" ]] || [[ "$resposta" == "s" ]] ; then
        echo "Programa finalitzat"
        exit 1
    fi
done