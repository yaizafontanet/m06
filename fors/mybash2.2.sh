#!/bin/bash
#Crea un fitxer mybash2.sh. Modifica el codi anterior per crear carpetes “lab2” a “lab12”

for ((i=0;i<12;i++))
do
    mkdir lab$i
    echo "S'ha creat la carpeta lab$i"
done