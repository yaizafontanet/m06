#!/bin/bash
#3- Fes un script que li passis un operacio en format “n1 op n2” on nX es un numero i op es un simbol d’operacio i et dongui el resultat.
#(comença creant la funcio “calcul()”)
n1=$1
op=$2
n2=$3

calcul() {
    resultat=$(($n1 $op $n2))
    echo $resultat
}

echo calcul()
