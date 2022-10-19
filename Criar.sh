#!/bin/bash
#Script para criacao de arquivos no fomato Script
#OBS: O Script foi criado para quando executar seja criado um script dentro da pasta documentos.
#Caso queira trocar a pasta aonde o Script será criado basta alterar o diretório.

echo "Informe o nome do arquivo de Script; " 
read nome
touch ~/Documentos/$nome.sh
chmod +x ~/Documentos/$nome.sh
echo '#!/bin/bash' > ~/Documentos/$nome.sh
echo '#Atividade de Script' >> ~/Documentos/$nome.sh
echo "--------------------Pronto seu script foi criado!---------------"
sleep 1
echo "--------------------------Abrindo o Arquivo!------------------- "
sleep 2
open ~/Documentos/$nome.sh
