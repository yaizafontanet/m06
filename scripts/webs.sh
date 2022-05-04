#!/bin/bash
#Guardem el paràmetre en una variable, es el nom del nostre fitxer 
fitxer=$1

#funció per un possible error al carregar una pàgina web
error_exit()
{
	echo $1
}

#Control de que ha indicat nomès un parametre
if [[ $# == 1 ]]; then
    #Control per veure si el fitxer existeix
    if [[ -f $fitxer ]] ; then
        #Bucle per llegir les linies del nostre arxiu
        while read -r line;
        do
            #Control de les linies de les pàgines web
	        R=$(echo $line | awk -F '://' '{print $1}')
            if [[ "$R" == "https" ]] || [[ "$R" == "http" ]] ; then
                #Control d'activitat de la pàgina web
                (curl -w $line) 2>/dev/null 
                if [[ $? -eq 0 ]]; then
                    echo "La pàgina web $line  - OPERATIVA -"
                else
                    echo "La pàgina web $line  - NO OPERATIVA -"
                fi
            else
                #Missatge d'error en cas de que una linia no tingui l'encapçalament correcte
                error_exit "La linia $line no es correcte."
            fi
        done < $fitxer
    else
        #Missatge d'error perque el fitxer no existeix
	    error_exit "El fitxer $fitxer que has indicat no existeix."
    fi
else
    #Missatge d'error per no indicar cap parametre o per haver indicat més d'un parametre
    error_exit "Error! Has d'indicar obligatoriament un paràmetre que sigui el nom del fitxer amb el que vols treballar!"
fi