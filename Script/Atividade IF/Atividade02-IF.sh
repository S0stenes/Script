#!/bin/bash
#Atividade 02 - Sobre IF
#Faca um script que peca pro usuario remover um arquivo (ele deve digitar o nome do arquivo via script) 
#e imprima na tela se o comando foi executado com sucesso (usando a variavel especial $? )

echo "Nesse Script voce ira remover um arquivo e irei lhe informar se ele foi excluido ou nao."
echo -n "Informe o nome do arquivo que voce deseja remover; "
read arquivo
rm $arquivo 2>/dev/null
if [ $? -eq 0 ]
then
    echo "Seu arquivo vou removido com sucesso!"
else
    echo "Houve um erro, seu arquivo ja foi removido ou voce digitou algo errado. "
fi