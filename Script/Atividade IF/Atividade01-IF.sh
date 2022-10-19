#!/bin/bash
#Atividade 01 - sobre IF
#Faca um script que some dois numero e diga se a soma e maior ou menor que 100.

echo "Esse Script ira somar 2 numeros e dizer se eh maior ou menos que 100"
echo -n "Informe o primeiro valor;  "
read n1
echo -n "Informa o segundo valor;  "
read n2
soma=$(($n1 + $n2))
echo " O soma dos valores eh = $soma"
if [ $soma -ge 100 ]
then
    echo "A soma dos valores eh maior que 100"
elif [ $soma -le 100 ]
then
    echo "A soma dos valores eh menor que 100"
elif [ $soma -eq 100 ]
then
    echo "A soma dos valores eh igual a 100"
else
    echo "Digite um valor valido para que possamos realizar a operacao! "
fi