#!/bin/bash
R1=echo $1 | awk -F '://' '{print $1}'
R2=echo $2 | awk -F '://' '{print $1}'

#funció per un possible error en la referència del servidor LDAP o existencia del fitxer
error_exit()
{
	echo "ERROR! Comprova que l'arxiu $fitxer existeix i que la referència del servidor LDAP $URI és correcta."
    exit 1
}

#Control de que s'han indicat almenys dos paràmetres
if [[ $# == 1 ]]; then
    if [[ "$R1" == "ldap" ]]; then
        URI=$1
        fitxer=$2
        if [[ -f ]]
    elif [[ "$R2" == "ldap" ]]; then
        URI=$2
        fitxer=$1
        #Control per veure si el fitxer existeix
        if [[ -f $fitxer ]] && [[curl $URI >/dev/null]]; then
        else
            echo error_exit
        fi
    else
        echo "Els paràmetres indicats són incorrectes. Cal que indiquis la URI del servidor LDAP i el fitxer amb el que vols treballar."
    fi