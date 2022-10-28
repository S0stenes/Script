#!/bin/bash
#Atividade de Script
#Altere o script de renomear lotes de arquivos para ser genérico e aceitar renomear qualquer coisa. Para isso, faça ele ler dois parâmetros. O primeiro parâmetro será o filtro onde buscará apenas arquivos que contenham a palavra, o segundo é o valor que será adicionado no final do nome do arquivo.

if [ $# -ne 2 ]
then
    echo "Voce deve digitar dois paramêtros para realizar a operação..."
    exit
fi

ls -1 ~/Documentos/'Script - Github'/Script/'Atividade Parametro'/pasta03 | grep $1 > /tmp/saidatemp

cd ~/Documentos/'Script - Github'/Script/'Atividade Parametro'/pasta03
while read linha;
do
    primeiraparte=$(echo $linha | cut -d'.' -f 1)
    segundaparte=$(echo $linha | cut -d'.' -f 2)
    mv $linha $primeiraparte-$2.$segundaparte
    if [ $? -ne 0 ]
    then
        echo "Ocorreu um erro ao renomear o arquivo $linha."
        exit
    fi
done < /tmp/saidatemp