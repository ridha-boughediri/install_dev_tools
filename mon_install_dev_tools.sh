#!/bin/bash

# Mettre à jour les paquets et prérequis
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Installer Git
sudo apt-get install -y git

# Installer Zsh
sudo apt-get install -y zsh

# Changer le shell par défaut de l'utilisateur courant à Zsh
chsh -s $(which zsh)

# Installer Oh My Zsh (https://ohmyz.sh/)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Installer les outils de développement web
sudo apt-get install -y nodejs npm
sudo npm install -g yarn
sudo npm install -g create-react-app
sudo npm install -g @angular/cli

# Installer les outils de développement .NET
sudo apt-get install -y wget apt-transport-https
wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y dotnet-sdk-6.0

# Installer Python
sudo apt-get install -y python3 python3-pip
sudo ln -s /usr/bin/python3 /usr/bin/python

# Installer Symfony CLI
wget https://get.symfony.com/cli/installer -O - | bash
sudo mv /home/$USER/.symfony/bin/symfony /usr/local/bin/symfony

# Ajouter le GPG key officiel de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Ajouter le dépôt Docker aux dépôts APT
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Mettre à jour les paquets après l'ajout du dépôt Docker
sudo apt-get update

# Installer Docker
sudo apt-get install -y docker-ce

# Ajouter l'utilisateur courant au groupe Docker pour permettre l'exécution sans sudo
sudo usermod -aG docker $USER

# Ajouter le dépôt officiel de Microsoft pour VS Code
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# Mettre à jour les paquets après l'ajout du dépôt de VS Code
sudo apt-get update

# Installer VS Code
sudo apt-get install -y code

# Installer NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Charger NVM dans la session shell actuelle
source ~/.bashrc

# Installer Node.js 20
nvm install 20

# Définir Node.js 20 comme version par défaut
nvm alias default 20

# Installer Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y
rm google-chrome-stable_current_amd64.deb

# Télécharger et installer GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
rm gitkraken-amd64.deb

# Afficher les versions installées pour vérification
git --version
docker --version
code --version
node -v
npm -v
google-chrome --version
dotnet --version
python --version
symfony --version
zsh --version
