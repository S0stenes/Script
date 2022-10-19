#!/bin/bash
#Atividade de Script - While 01
#Faça um script que vá lendo do teclado e acumulando 
#a soma de valores enquanto o usuário digitar números positivos.
#Após isso a soma deverá ser impressa.

#Faça um script que vá lendo do teclado e acumulando a 
#soma de valores enquanto o usuário digitar números positivos.
#Após isso a soma deverá ser impressa.

echo "---Esse Script ira pegar os valores que você digitar e lhe fornecer a soma de todos no final :)---"
echo "--Nao e permitido numeros com virgula, somente valores possitivos e inteiros.--"
echo "----Para parar o programa e realizar a soma digite -1 ----"
n=0
while [ $n -ge 0 ];do
    echo -n "Digite o número --> "
    read x
    if [ $x -ge 0 ]
    then
    n=$(($x+$n))
    elif [ $x -eq -1 ]
    then
        echo "A soma dos valores atribuidos é = $n"
        n=-1
    else
        echo "O valor digitado eh invalido, por favor tente novamente."
    fi
done