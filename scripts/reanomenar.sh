#!/bin/bash
#fitxer existent
fitxer=$1

#nom per reanomenar
rename=$2

#condició per a que  fitxer existeixi i rename no existeixi
if [[ -f $fitxer ]] && [[ ! -f $rename ]] ; then
    #demanem una confirmació al usuari
    echo "Vols canviar el nom del fitxer $fitxer pel nom $rename? (S/s)"
    read resposta
    if [[ "$resposta" == "S" ]] || [[ "$resposta" == "s" ]]; then
        #reanomenem el fitxer i fem un echo informant del canvi 
	$(mv $fitxer $rename)
        echo "El fitxer $fitxer ara s'anomena $rename."
    else
        #resposta per respostes alternatives
        echo "Aquesta operació no es pot realitzar. Confirma la pregunta anterior amb els parametres S o s ."
    fi
else
    #condició pel missatge d'error en cas de que no existeixi ni el fitxer ni el rename 
    if [[ ! -f $fitxer ]] && [[ ! -f $rename ]] ; then
        echo "No es pot realitzar el canvi. $fitxer NO existeix."
    
    #condició pel missatge d'error en cas de que existeixi el fitxer però també el rename
    elif [[ -f $fitxer ]] && [[ -f $rename ]] ; then
        echo "No es pot realitzar el canvi. El fitxer $rename SÍ que existeix."
    
    #missatge d'error en lúltim cas possible, que el fitxer no existeixi i el rename si que existeixi
    else
        echo "No es pot realitzar el canvi. El fitxer $fitxer NO existeix i el fitxer $rename SÍ que existeix."
    fi
fi