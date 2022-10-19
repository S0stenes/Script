#!/bin/bash
#Atividade de Script - Case
#Comando CASE
echo -n "O que deseja fazer? (A)lmocar/(J)antar/(S)air? (A)"
read resposta
case "$resposta" in
    a|A|"")
        echo "Entao tenha um bom almoco =)"
    ;;
    j|J)
        echo "Um jantar vai muito bom."
    ;;
    s|S)
        echo "Saindo..."
    ;;
    *)
        echo "---------Opcao invalida---------"
    ;;
esac