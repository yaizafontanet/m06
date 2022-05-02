#!/bin/bash
#Guardem el paràmetre en una variable, es el nom del nostre fitxer 
fitxer=$1

#Control de que ha indicat nomès un parametre
if [[ $# == 1 ]]; then
    #Control per veure si el fitxer existeix
    if [[ -f $fitxer ]] ; then
        #Control de les linies de les pàgines web
        
    else
        echo "El fitxer $fitxer que has indicat no existeix."
    fi
else
    echo "Error! Has d'indicar obligatoriament un paràmetre que sigui el nom del fitxer amb el que vols treballar!"
fi