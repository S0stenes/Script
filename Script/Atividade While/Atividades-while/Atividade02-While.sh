#!/bin/bash
#Atividade de Script 02
#Faça um script para ler linha por linha de um arquivo de texto contendo
#nome de arquivos em uma pasta. Esse script deve renomear todos esses 
#arquivos para arquivo1, arquivo2, arquivo3 e assim sucessivamente.

cd ~/Documentos/'Arquivos para teste'
ls -1 > ~/Documentos/lista-de-arquivos.txt
n=0
while read line; do
    echo -e "$line\n";
    n=$(($n+1))
    mv "$line" "Arquivo$n"      
done < ~/Documentos/lista-de-arquivos.txt