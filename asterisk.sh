#!/bin/bash
n=110
error_exit()
{
	echo "ERROR! Resiva que l'arxiu $fitxer existeix i que té el format csv."
    exit 1
}

proces()
{
    #Control per veure si el fitxer existeix
    if [[ -f $fitxer ]]; then
        #Control per veure si l'arxiu és csv
        csv=$(echo $fitxer | awk -F '.' '{print $2}'
        if [[ "$csv" == "csv" ]]; then
            #Bucle per llegir les linies del nostre arxiu csv
            while read -r line;
            do
            #Obtenir nom dels usuaris que volem afegir
            nom=$(echo $line | awk -F ',' '{print $1}')

            #Obetenir el primer cognom del usuari que volem afegir
            cognom=$(echo $line | awk -F ',' '{print $2}' | awk -F ' ' '{print $1}')

            #Contador per assignar un numero
            num=$((n+1))

            #Creem una contrasenya formada pel cognom del usuari i numeros
            passwd=$($cognom+123)

            #Crear l'arxiu amb els paràmetres dels usuaris
            echo "[$nom](usuario)
username=$nom
secret=$passwd
port=5061
            " >> /etc/asterisk/sip.conf

            #Crear l'arxiu amb els paràmetres dels usuaris
            echo "exten => $num,1,Dial(SIP/$nom)" >> /etc/asterisk/extensions.conf

            done < $fitxer

            #Reiniciar el servei de asterisk
            systemctl restart asterisk.service

        else
            error_exit
        fi
    else
	    error_exit
    fi
}

echo "Indica l'arxiu (.csv) per realitzar la importació d'usuaris:"
read fitxer
proces