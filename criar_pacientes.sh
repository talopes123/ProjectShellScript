#!/bin/bash

if [ -f pacientes.txt ]; then 

rm pacientes.txt

fi

cat /etc/passwd | grep "^a.[1-9]" | sed 's/^a//; s/[:,]/;/g' | cut -d';' -f1,5 | head -10 | awk -F'[;]' '{print $0"; ; ;a"$1"@iscte-iul.pt;100"}' | sort > pacientes.txt   


echo "Ficheiro de pacientes criado"


