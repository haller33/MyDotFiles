#!/usr/bin/env bash

while true; do
    
    NS=$(flatpak ps | \grep --color telegram | tr '\t' ' ' | cut -d ' ' -f 1)    

    if [[ -n $NS ]]; then

	flatpak kill $NS
	echo "GOTOWORK"
    else
	echo "no process or procastination fold"
    fi
    sleep 2
done
