#!/bin/bash




echo "1. Cria pacientes"

echo "2. Cria médicos"

echo "3. Stats"

echo "4. Avalia médicos"

echo "0. Sair"

echo "Digite a opção que pretende"

read n 


  if [ $n = 1 ]; then

	 ./criar_pacientes.sh
	 ./menu.sh
	

  elif [ $n = 2 ]; then
	echo "Digite os dados do médico da seguinte forma  :

         "
		 
    echo "nome [espaço] nº de cédula profissional [espaço] especialidade médica [espaço] email [espaço] rating [espaço] nºde consultas [espaço] saldo
		"


	read a b c d e f g 

	./criar_medico.sh $a $b $c $d $e $f $g
	./menu.sh
   
  elif [ $n = 3 ]; then

	echo "Para saber estatisticas sobre a localidade dos alunos e os saldos dos médicos preencha da seguinte maneira :

		"

	echo "Localidade [espaço] saldo
		"
	
	read a b
   
    ./stats.sh $a $b
	./menu.sh

  elif [ $n = 4 ]; then

	./avalia_medicos.sh
	./menu.sh
	
 
  elif [ $n = 0 ]; then 
	echo ^C


  else 

	echo "Opção não existente
		"
	./menu.sh

fi



	


	  
