#!/bin/bash


if [ -f lista_negra.txt ]; then 
rm lista_negra.txt
fi

while IFS=  read  line     
do


if [ ! -z $(line | cut -d';' -f5,6 | grep "^[1-4]" | cut -d';' -f2 | grep "[7-9]") ]; then

echo $line > lista_negra.txt 
   
fi

done < medicos.txt



echo "Abaixo está a lista negra"

cat lista_negra.txt

