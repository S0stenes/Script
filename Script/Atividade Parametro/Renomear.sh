#!/bin/bash
#Atividade de Script
#Crie um script de renomear lote de arquivos para terminar caso o comando de renomear der erro. (para sair do script a qualquer momento use o comando exit)

if [ $# -ne 1 ]
then
    echo("Esse comando faz com que renomeie todos os arquivos de uma pasta. [1] ")
fi

resposta=$1
if [ $resposta -eq 1 ]
then
    cd ~/Documentos/'Arquivos para teste'
    ls -1 > ~/Documentos/lista-de-arquivos.txt
    n=0
    while read line; do
        echo -e "$line\n";
        n=$(($n+1))
        mv "$line" "Arquivo$n"      
    done < ~/Documentos/lista-de-arquivos.txt
fi