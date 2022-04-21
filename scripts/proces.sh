#!/bin/bash
#Denama nom del proces
echo "Donam el nom del proces que vols eliminarar:"
read nom

#comprovació de existencia del proces
if pgrep -x $nom >/dev/null ; then
    echo "El procés $nom SÍ que existeix."
    #eliminar proces
    $(pidof $nom)
else
    echo "El procés $nom NO existeix."
fi