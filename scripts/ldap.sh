#!/bin/bash
R1=echo $1 | awk -F '://' '{print $1}'
R2=echo $2 | awk -F '://' '{print $1}'

#funció per un possible error en la referència del servidor LDAP o existencia del fitxer
error_exit()
{
	echo "ERROR! Comprova que l'arxiu $fitxer existeix i que la referència del servidor LDAP $URI és correcta."
    exit 1
}

proces()
{
    #Control per veure si el fitxer existeix i la pàgina està operativa
    if [[ -f $fitxer ]] && [[ (curl -w $URI) 2>/dev/null ]]; then
        #Bucle per llegir les linies del nostre arxiu
        while read -r line;
        do
            #Combinació de les lletres pel nom d'usuari
            #u1 agafem la primera lletra de la linia, en aquest cas la primera inicial del nom
            u1=$(echo $line | cut -b 1)
            #u2 primer agafem la segona paraula que es el cognom i d'aquí agafem les 4 primeres lletres
            u2=$(echo $line | awk '{print $2}' | cut -b 1,2,3,4)
            #user realitzem la combinació de l'enunciat i ho passem tot a minúscules
            user=$(echo $u2$u1 | tr '[:upper:]' '[:lower:]')

            #Agafar la última paraula de la linia, que es la contrasenya
            pass=$(echo $line | awk 'NF>1{print $NF}')

            #Agafar el tercer paràmetre que es el telèfon
            tel=$(echo $line | awk -v N=3 '{print $N}')

            #Agafar el quart paràmetre que es la adreça de correu
            address=$(echo $line | awk -v N=4 '{print $N}')

            #Crear el usuari de ldap
            

        done < $fitxer
    else
        echo error_exit
    fi
}

#Control de que s'han indicat almenys dos paràmetres
if [[ $# == 2 ]]; then
    #Control per saber quin dels dos parametres és el fitxer i quin la referencia de LDAP
    if [[ "$R1" == "ldap" ]]; then
        URI=$1
        fitxer=$2
        proces
    elif [[ "$R2" == "ldap" ]]; then
        URI=$2
        fitxer=$1
        proces
    else
        echo "Els paràmetres indicats són incorrectes. Cal que indiquis la URI del servidor LDAP i el fitxer amb el que vols treballar."
    fi
else
    echo "Has d'indicar com a mínim dos paràmetres!"
fi