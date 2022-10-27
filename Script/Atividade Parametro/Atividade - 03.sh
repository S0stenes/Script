#!/bin/bash
#Atividade de Script
#Altere o script de renomear lotes de arquivos para ser genérico e aceitar renomear qualquer coisa. Para isso, faça ele ler dois parâmetros. O primeiro parâmetro será o filtro onde buscará apenas arquivos que contenham a palavra, o segundo é o valor que será adicionado no final do nome do arquivo.

if [ $# -ne 1 ]
then
    echo "Esse comando faz com que renomeie todos os arquivos de uma pasta. [1] "
elif [ $1 -eq 1 ]
then
    cd ~/Documentos/'Arquivos para teste'
    ls -1 > ~/Documentos/lista-de-arquivos.txt 
    n=0
    while read line; do
        echo -e "$line\n";
        n=$(($n+1))
        mv "$line" "Arquivo$n" 2> /dev/null   
        if [ $? -ne 0 ]
        then
            echo "Ocorreu um problema o programa irá se encerrar..."
            sleep 1
            echo 'Encerrando em 3...'
            sleep 1
            echo 'Encerrando em 2..'
            sleep
            echo 'Encerrando em 1.'
            exit
        fi   
    done < ~/Documentos/lista-de-arquivos.txt
else
    echo 'Digite o comando corretamente! '
fi