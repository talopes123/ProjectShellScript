#!/bin/bash

if [ ! -f medicos.txt ]; then
touch medicos.txt
fi


if [ -z $1 ] || [ -z $2 ] || [ -z $3 ] || [ -z $4 ] || [ -z $5 ] || [ -z $6 ] || [ -z $7 ]; then 

   echo "Não preencheu os dados de forma correta
        "




elif [ -z $(cat medicos.txt | cut -d';' -f2 | grep -w "$2") ]; then

		echo "$1;$2;$3;$4;$5;$6;$7" >> medicos.txt

		echo " Dr(a). $1 adicionado(a) à lista de médicos
			 "

	 	echo " Abaixo está a lista de médicos atualizada
			
			 "
	
			 
grep -n '^' medicos.txt


	else

		echo " Dr(a). $1 já se encontra registado
             "
	fi


