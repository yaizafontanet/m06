#!/bin/bash
 i que mostri missatges diferents i específics per a cada tipus d’error.

#fitxer existent
fitxer = $1

#nom per reanomenar
rename = $2

if [[ -f $fitxer ]] && [[ ! -f $rename ]] ; then
    $(mv $fitxer $rename)
    echo "El fitxer $fitxer ara s'anomena $rename ."
else
    if [[ ! -f $fitxer ]] && [[ ! -f $rename ]] ; then
        echo "No es pot realitzar el canvi. $fitxer NO és un fitxer."
    elif [[ -f $fitxer ]] && [[ -f $rename ]] ; then
        echo "No es pot realitzar el canvi. $rename SÍ que és un fitxer."
    else
        echo "No es pot realitzar el canvi. $fitxer NO és un fitxer i $rename SÍ que és un fitxer."
    fi
fi
