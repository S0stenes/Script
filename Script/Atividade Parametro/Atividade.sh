#!/bin/bash
#Atividade de Script - Atividade Variáveis especiais

#Para testar seu conhecimento faça um programa que crie de acordo com um menu,
#um arquivo com nome específico.
#Crie as seguintes opções:

#Criar um arquivo com o nome_de_usuario-data
#Criar um arquivo com o nome_da_pasta_atual-nome_usuario
#Criar um arquivo com a data-hora-pasta_atual
#Criar um arquivo com a hora(sem segundos)-nome_usuario
#Criar um arquivo com o nome_de_usuario-espaço_livre_memoria
#Criar um arquivo com o nome_de_usuario-data-hora-espaco_livre_da_particao_sda3 (comando df)

#Para pegar a data, utilize o comando Date, com as opções apropriadas.
#Use a opção --help para ver com faz.
#Ex: Pegar de usar o comando date para pegar apenas o ano atual:
#date +%Y
#O comando para ver espaço livre na memória é o comando free.

if [ $# -ne 1 ]
then
    echo "-----------Selecione a opção que você deseja----------"
    echo "-Criar um arquivo com o nome_usuario_-data-[1]"
    echo "--Criar um arquivo com o nome_da_pasta_atual-nome--[2]"
    echo "---Criar um arquivo com a data-hora-pasta_atual---[3]"
    echo "----Criar um arquivo com a hora(sem segundos)-nome_usuario----[4]"
    echo "-----Criar um arquivo com o nome_de_usuario-espaço_livre_memoria-----[5]"
    echo "------Criar um arquivo com o nome_de_usuario-data-hora-espaco_livre_da_particao_sda3------[6]"
    exit
fi

resposta=$1
case "$resposta" in
    1|UM|um)
        echo "Criarei um arquivo com o nome_usuario_-data"
        data=$(date +%Y-%m-%d)
        touch "$USER-$data"
        echo "Criando arquivo."
        sleep 1
        echo "Criando arquivo.."
        sleep 1
        echo "Criando arquivo..."
        sleep 1
        echo "----Pronto seu arquivo foi Criado----"
    ;;
    2|DOIS|dois)
        echo "Criarei um arquivo com o nome_da_pasta_atual-nome"
        localpwd=$(pwd | tr '/' '\n' | tail -n 1)
        touch "$localpwd-$USER"
        echo "Criando arquivo."
        sleep 1
        echo "Criando arquivo.."
        sleep 1
        echo "Criando arquivo..."
        sleep 1
        echo "----Pronto seu arquivo foi Criado----"
    ;;
    3|TRES|tres)
        echo "Criarei um arquivo com a data-hora-pasta_atual"
        data=$(date +%Y-%m-%d)
        hora=$(date +%T)
        localpwd=$(pwd | tr '/' '\n' | tail -n 1)
        touch "$data-$hora-$localpwd"
        echo "Criando arquivo."
        sleep 1
        echo "Criando arquivo.."
        sleep 1
        echo "Criando arquivo..."
        sleep 1
        echo "----Pronto seu arquivo foi Criado----"
    ;;
    4|QUATRO|quatro)
        echo "Criarei um arquivo com a hora(sem segundos)-nome_usuario"
        hora=$(date +%R)
        localpwd=$(pwd | tr '/' '\n' | tail -n 1)
        touch "$hora-$localpwd"
        echo "Criando arquivo."
        sleep 1
        echo "Criando arquivo.."
        sleep 1
        echo "Criando arquivo..."
        sleep 1
        echo "----Pronto seu arquivo foi Criado----"
    ;;
    5|CINCO|cinco)
        echo "Criarei um arquivo com o nome_de_usuario-espaço_livre_memoria"
        espaco=$(free -h | grep Mem | tr -s " " | cut -d' ' -f 4)
        touch "$USER-$espaco"
        echo "Criando arquivo."
        sleep 1
        echo "Criando arquivo.."
        sleep 1
        echo "Criando arquivo..."
        sleep 1
        echo "----Pronto seu arquivo foi Criado----"
    ;;
    6|SEIS|seis)
        echo "Criar um arquivo com o nome_de_usuario-data-hora-espaco_livre_da_particao_sda3"
        espaco=$(df -H| grep sda3 | tr -s " " | cut -d' ' -f 4)
        data=$(date +%Y-%m-%d)
        hora=$(date +%T)
        touch "$USER--$data--$hora--$espaco"
        echo "Criando arquivo."
        sleep 1
        echo "Criando arquivo.."
        sleep 1
        echo "Criando arquivo..."
        sleep 1
        echo "----Pronto seu arquivo foi Criado----"
    ;;
    *)
        echo "---------Opcao invalida---------"
    ;;
esac
x=0
while [ $x -eq 0 ]; do
    echo "Deseja verificar se o arquivo foi criado? [Y/n]"
    read r
    case "$r" in
    Y|yes|y|"")
        ls -l
        x=1    
    ;;
    n|no|N)
        echo "Basta entrar na pasta que você verá o arquivo criado"
        x=1
    ;;
    *)
    echo "---------Opcao invalida---------"
    ;;
    esac
done

#y=0
#while [ $y -eq 0 ]; do
#    echo "Deseja realizar a operação novamente? [Y/n]"
#    read u
#    case "$u" in
#        Y|yes|y|"")
#            ./Atividade-Menu-Case.sh 
#            y=-1
#            sleep 1        
#        ;;
#        n|no|N)
#            echo "Okay!"
#            y=-1
#        ;;
#        *)
#        echo "---------Opcao invalida---------"
#        ;;
#    esac
#done