#!/bin/bash
#Atividade 03 - Sobre IF
# Faca um script que diga se sua 
#unidade C: possui mais de 2000000 de bytes livres.

#Verificando o valor de espaco livre no disco
x=$(df | grep sda3 | tr -s " " | cut -d' ' -f 4)
espaco=2000000
#logica para resolver a atividade
if [ $x -gt $espaco ]
then
    echo "O espaco disponivel do seu disco eh maior que $espaco bytes"
elif [ $x -lt $espaco ]
then
    echo "O espaco disposnivel do seu disco eh menor que $espaco bytes"
else
    echo "O espaco no seu disco eh igual a $espaco bytes"
fi