#!/bin/bash
#Atividade de Script - While 01
#Crie um script que renomeie todos os arquivos contidos em uma pasta qualquer. 
#Utilize o que está ai neste link como ideia. É necessário o uso de leitura de arquivos.
#Adicione no final do nome de cada arquivo a palavra renomeado.
#Ex: nome do arquivo: imagem.jpg
#depois de renomear: imagem.jpg-renomeado

cd ~/Documentos/'Arquivos para teste'
ls -1 > ~/Documentos/lista-de-arquivos.txt
while read line; do
    echo -e "$line\n";
    mv "$line" "$line-renomeado"      
done < ~/Documentos/lista-de-arquivos.txt