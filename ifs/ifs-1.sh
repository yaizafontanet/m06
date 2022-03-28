#!/bin/bash
#1- Fes un script que li pasis d’arguments 2 números i et retorni el valor més gran.
if [ $1 -lt $2 ]; then
    echo "$2"
else
    if [ $1 -gt $2 ]; then
        echo "$1"
    else
        echo "Els valors indicats són iguals"
    fi
fi


###################
### OTRA OPCIÓN ###
###################

#VAR1=$1
#VAR2=$2
#echo "$VAR1"
#echo "$VAR2"
#echo "$(($VAR1>$VAR2))"
#
#if (($1>$2)); then
#    echo "$1 + gran"
#else
#    echo "$2 + gran"
#fi
