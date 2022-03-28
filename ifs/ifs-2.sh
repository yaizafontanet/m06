#!/bin/bash
#2- Fes un script que li passis un fitxer o carpeta i et retorni:
#    “No es un fitxer”
#    “es un fitxer i hi pots escriure”
#    “es un fitxer pero no el pots llegir”
FILE=$1

if [ -f $FILE ]; then
    if [ -w $FILE ]; then
        echo "es un fitxer i hi pots escriure"
    fi
    if [ ! -r $FILE ]; then
        echo "es un fitxer pero no el pots llegir"
    fi 
else
    echo "No es un fitxer"
fi