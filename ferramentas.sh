#!/bin/bash
#Script criado por SheepN0tF0und baseado no script da Lyanna  na intenção de auxiliar os alunos do TDI.

# Checa se o sistema é Linux ou não
# Se for, o processo continua. Caso contrário, a aplicação será fechada.
if [ "$(uname)" != "Linux" ]; then
   echo -e "\e[1;32mVocê não está usando um sistema GNU/Linux ou similar"
   exit 1
fi

clear
echo -e "\e[1;36m Vamos começar atualizando o \e[1;32mTermux."

sleep 4
cd ~
apt update -y && apt full-upgrade -y
clear

echo -e "\e[1;36m Instalando o Git e as duas linguagens necessarias \e[1;32mPython, Golang"

sleep 5

# Instalando o Git
apt install git -y

# Instalando o Python
apt install python -y

# Instalando o Go
apt install golang -y

clear

echo -e "\e[1;36m Instalando ferramentas em \e[1;32mGolang"

sleep 5

go install github.com/Emoe/kxss@latest

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

go install github.com/lc/gau/v2/cmd/gau@latest

go install -v github.com/tomnomnom/anew@latest

go install github.com/ffuf/ffuf@latest

go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

~/go/bin/nuclei -update-templates

clear
echo -e "\e[1;36m Baixando repositórios de ferramentas de \e[1;32mPYTHON"

sleep 4
# Baixando ferramentas do Github
pip install git-dumper

git clone https://github.com/devanshbatham/ParamSpider

# Acessando o diretório da ferramenta baixada
cd ParamSpider

# Instalando os requerimentos
pip install -r requirements.txt

cd ~

git clone https://github.com/AngelSecurityTeam/Cam-Hackers

cd Cam-Hackers

pip install -r requirements.txt

cd ~

echo -e "\e[1;36mBaixando o \e[1;92mSeclist"

sleep 5

git clone https://github.com/danielmiessler/SecLists.git