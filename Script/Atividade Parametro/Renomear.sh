#!/bin/bash
#Atividade de Script
#Crie um script de renomear lote de arquivos para terminar caso o comando de renomear der erro. (para sair do script a qualquer momento use o comando exit)

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
