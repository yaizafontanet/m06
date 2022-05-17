#!/bin/bash
# hola.sh
echo "******************"
echo "Hola mon"
echo "Sóc $USER"
echo "Avui és $(date +%x)"
echo "Són les $(date +%R)"
echo "******************"

#Fixeu una hora d’execució de manera que en pugueu comprovar el funcionament. Per exemple, si són les 19.00 h fixeu l’hora a les 19.10 h.
#Redirigiu la sortida estàndard i la d’error del procés a un fitxer anomenat hola.log situat al vostre directori de treball.