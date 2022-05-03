#!/bin/bash
#Denama nom del proces
echo "Donam el nom del procès que vols eliminara:"
read nom

#funció per un possible error al eliminar el proces
error_exit()
{
	echo "No es possible eliminar el procès $nom"
	exit 1
}

#comprovació de existencia del proces
if pgrep -x $nom >/dev/null ; then
    #eliminar proces
    pkill -u $USER -e $nom >/dev/null || error_exit
    echo "El procés $nom s'ha eliminat amb exit!"
else
    echo "El procés $nom NO existeix."
fi