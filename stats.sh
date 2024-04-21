#!/bin/bash

if [ -f medicos.txt ]; then 


if [ -z $1 ] || [ -z $2 ] ; then

echo "Não preencheu os dados de forma correta 
     "


else


echo "O numero de pacientes que vive na localidade de $1 é :"

cat pacientes.txt | cut -d';' -f3 | grep $1 | wc -l

echo "O numero de médicos com saldo superior a $2 é :"

a=0

for i in $(cat medicos.txt | cut -d';' -f7);
do

if [ $i -gt $2 ]; then 

a=$(( $a+1 ))

fi


done

echo $a

fi


fi
  

 
