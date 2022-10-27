#!/bin/bash
#Script para criacao de arquivos no fomato Script

echo "Informe o nome do arquivo de Script; " 
read nome
touch ~/Documentos/'Script - Github'/Script/$nome.sh
chmod +x ~/Documentos/'Script - Github'/Script/$nome.sh
echo '#!/bin/bash' > ~/Documentos/'Script - Github'/Script/$nome.sh
echo '#Atividade de Script' >> ~/Documentos/'Script - Github'/Script/$nome.sh
echo "--------------------Pronto seu script foi criado!---------------"
sleep 1
echo "--------------------------Abrindo o Arquivo!------------------- "
sleep 2
open ~/Documentos/'Script - Github'/Script/$nome.sh