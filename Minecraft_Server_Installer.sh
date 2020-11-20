#!/bin/bash
# Version : v1.1
clear
echo " "
echo "      #==============*\_-_/*=============#"
echo "      #                                  #"
echo "      #    Minecraft Server Installer    #"
echo "      #                by                #"
echo "      #          BlackFalcon1961         #"
echo "      #                                  #"
echo "      #               v1.1               #"
echo "      #                                  #"
echo "      #==============*\_-_/*=============#"
echo " "

# Functions :

welcome(){
	echo " "
	echo "Bienvenue dans l'installateur de serveur Minecraft !"
	echo " "
	echo "Welcome to the Minecraft server installer!"
	echo " "
	echo " "
	echo "Pour choisir votre langue, choisissez A ou B"
	echo " "
	echo "To choose your language, choose A or B"
	echo " "
	echo " "
	echo "[A] => Français"
	echo "[B] => English"
	echo " "
	echo -n "> "
	read chooselanguage
if [ "$chooselanguage" = "a" ] || [ "$chooselanguage" = "A" ]; then
	clear
	installer-fr
elif [ "$chooselanguage" = "b" ] || [ "$chooselanguage" = "B" ]; then
	clear
	installer-en
fi
}

pre-install-fr(){
	echo " "
	echo "Pour effectuer l'installation, vous devez posséder les packages suivants :"
	echo " "
	echo "-> curl"
	echo "-> openjdk-8-jre"
	echo "-> unzip"
	echo " "
}

install-fr(){
	echo " "
	echo "Installer les packages manquants ? (O/N)"
	echo " "
	echo -n "> "
	read installrequirements
if [ "$installrequirements" = "o" ] || [ "$installrequirements" = "O" ]; then
	echo " "
	echo "Veuillez entrer votre mot de passe pour continuer"
	echo " "
	sudo apt update && sudo apt install openjdk-8-jre curl unzip -y
	clear
elif [ "$installrequirements" = "n" ] || [ "$installrequirements" = "N" ]; then
	clear
fi
	echo " "
	echo "Voulez-vous installer le serveur ou le mettre à jour ? :"
	echo " "
	echo "(A) -> Installer"
	echo "(B) -> Mettre à jour"
	echo " "
	echo -n "> "
	read installorupdate
if [ "$installorupdate" = "a" ] || [ "$installorupdate" = "A" ]; then
	clear
	cd /home/$USER
	mkdir Minecraft_Server
	cd Minecraft_Server
	clear
	echo " "
	echo "Début de l'installation..."
	echo " "
	curl -o server.jar https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar
	wget -O resources-fr.zip https://www.dropbox.com/s/j8urx7xfwl0af3y/resources-fr.zip
	unzip -o resources-fr.zip
	rm -r resources-fr.zip
	echo " "
	echo "Installation terminée !"
	echo " "
elif [ "$installorupdate" = "b" ] || [ "$installorupdate" = "B" ]; then
	clear
	cd /home/$USER/Minecraft_Server
	clear
	echo " "
	echo "Début de la mise à jour..."
	echo " "
	rm -r server.jar
	curl -o server.jar https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar
	clear
	echo " "
	echo "Mise à jour terminée !"
	echo " "
fi
}

start-server-fr(){
	clear
	cd /home/$USER/Minecraft_Server
	echo " "
	echo "Souhaitez-vous démarrer le serveur ? (O/N)"
	echo " "
	echo -n "> "
	read startserver
if [ "$startserver" = "o" ] || [ "$startserver" = "O" ]; then
	sh start_server.sh
elif [ "$startserver" = "n" ] || [ "$startserver" = "N" ]; then
	clear
	echo " "
	echo " "
	echo "                          Credits :"
	echo " "
	echo "             Script réalisé par BlackFalcon1961"
	echo "                     avec Sublime Text 3"
	echo " "
	echo "    ©2019 - 2020 | BlackFalcon1961 - Tous droits réservés"
	echo " "
	echo "                            v1.1"
	echo " "
	echo " "
	echo " "
	echo " "
	echo " "
fi
	read -t 1 cooldownquit5
	cooldownquit5='5'
	echo "Fermeture du script dans $cooldownquit5"
	read -t 1 cooldownquit4
	cooldownquit4='4'
	echo " "
	echo "Fermeture du script dans $cooldownquit4"
	read -t 1 cooldownquit3
	cooldownquit3='3'
	echo " "
	echo "Fermeture du script dans $cooldownquit3"
	read -t 1 cooldownquit2
	cooldownquit2='2'
	echo " "
	echo "Fermeture du script dans $cooldownquit2"
	read -t 1 cooldownquit1
	cooldownquit1='1'
	echo " "
	echo "Fermeture du script dans $cooldownquit1"
	read -t 1 cooldownquit0
	cooldownquit0='0'
	echo " "
	echo "Fermeture du script dans $cooldownquit0"
	clear
	exit
}

pre-install-en(){
	echo " "
	echo "To perform the installation, you must have the following packages :"
	echo " "
	echo "-> curl"
	echo "-> openjdk-8-jre"
	echo "-> unzip"
	echo " "
}

install-en(){
	echo " "
	echo "Install the missing packages? (Y/N)"
	echo " "
	echo -n "> "
	read installrequirements
if [ "$installrequirements" = "y" ] || [ "$installrequirements" = "Y" ]; then
	echo " "
	echo "Enter your password for continue"
	echo " "
	sudo apt update && sudo apt install openjdk-8-jre curl unzip -y
	clear
elif [ "$installrequirements" = "n" ] || [ "$installrequirements" = "N" ]; then
	clear
fi
	echo " "
	echo "Do you want to install the server or update it? :"
	echo " "
	echo "(A) -> Install"
	echo "(B) -> Update"
	echo " "
	echo -n "> "
	read installorupdate
if [ "$installorupdate" = "a" ] || [ "$installorupdate" = "A" ]; then
	clear
	cd /home/$USER
	mkdir Minecraft_Server
	cd Minecraft_Server
	clear
	echo " "
	echo "Starting install..."
	echo " "
	curl -o server.jar https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar
	wget -O resources-en.zip https://www.dropbox.com/s/usldsivv5noa70y/resources-en.zip
	unzip -o resources-en.zip
	rm -r resources-en.zip
	echo " "
	echo "Installation complete!"
	echo " "
elif [ "$installorupdate" = "b" ] || [ "$installorupdate" = "B" ]; then
	clear
	cd /home/$USER/Minecraft_Server
	clear
	echo " "
	echo "Starting update..."
	echo " "
	rm -r server.jar
	curl -o server.jar https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar
	clear
	echo " "
	echo "Update complete!"
	echo " "
fi
}

start-server-en(){
	clear
	cd /home/$USER/Minecraft_Server
	echo " "
	echo "Would you like to start the server? (Y/N)"
	echo " "
	echo -n "> "
	read startserver
if [ "$startserver" = "y" ] || [ "$startserver" = "Y" ]; then
	sh start_server.sh
elif [ "$startserver" = "n" ] || [ "$startserver" = "N" ]; then
	clear
	echo " "
	echo " "
	echo "                          Credits :"
	echo " "
	echo "                Script made by BlackFalcon1961"
	echo "                     using Sublime Text 3"
	echo " "
	echo "    ©2019 - 2020 | BlackFalcon1961 - All rights reserved"
	echo " "
	echo "                            v1.1"
	echo " "
	echo " "
	echo " "
	echo " "
	echo " "
fi
	read -t 1 cooldownquit5
	cooldownquit5='5'
	echo "Close script in $cooldownquit5"
	read -t 1 cooldownquit4
	cooldownquit4='4'
	echo " "
	echo "Close script in $cooldownquit4"
	read -t 1 cooldownquit3
	cooldownquit3='3'
	echo " "
	echo "Close script in $cooldownquit3"
	read -t 1 cooldownquit2
	cooldownquit2='2'
	echo " "
	echo "Close script in $cooldownquit2"
	read -t 1 cooldownquit1
	cooldownquit1='1'
	echo " "
	echo "Close script in $cooldownquit1"
	read -t 1 cooldownquit0
	cooldownquit0='0'
	echo " "
	echo "Close script in $cooldownquit0"
	clear
	exit
}

installer-fr(){
	clear
	pre-install-fr
	install-fr
	start-server-fr
}

installer-en(){
	clear
	pre-install-en
	install-en
	start-server-en
}

# Call functions :

welcome
