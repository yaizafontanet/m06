#!/bin/bash
#4- modifica l’script anterior per que el terminal et demani cada operand i la operacio per pantalla:
#Exemple: Dona’m el primer valor: ; Dona’m el segon: ; Quina operacio vols fer? ;

calcul() {
    echo "Donam el primer valor:"
    read n1
    echo "Dona’m el segon:"
    read n2
    echo "Quina operacio vols fer?"
    read op
    
    resultat=$(($n1 $op $n2))
    echo $resultat
}

echo calcul()