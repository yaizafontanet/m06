#!/bin/bash
#Demana usuari
echo "Indica el nom usuari del sistema:"
read usuari

#Comprovació existencia del usuari
if [ $(getent passwd $usuari) ] ; then
        echo "L'usuari $usuari SÍ que existeix."
        #llistar processos
        echo "Els processos de l'usuari $usuari són els següents:"
        ps -u $usuari
else
        echo "L'usuari $usuari NO existeix."
fi