#!/usr/bin/env bash

TIME=2

FRASE="no process or procastination find"
GOTOWORK="GOTOWORK"

echo $FRASE

while true; do
    
    NS=$(flatpak ps | grep telegram | tr '\t' ' ' | cut -d ' ' -f 1)    

    if [[ -n $NS ]]; then

	flatpak kill $NS

	echo "GOTOWORK"

#    else
#	echo "no process or procastination fold"

    fi

    sleep $TIME
done



