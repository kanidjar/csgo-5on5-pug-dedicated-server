#!/bin/sh

default="\033[0m"
red="\033[31m"
green="\033[32m"
yellow="\033[33m"
lightyellow="\033[93m"
blue="\033[34m"

if [ ! -d /home/csgoserver/serverfiles ]
then
	printf  "\nInstalling ${green}CS:GO ${default}server...\n\n"

	/home/csgoserver/csgoserver install

	clear
	echo "Your CS:GO server is now ready. Let's install some mods.\n\n"
	read -p "Press [ENTER] to continue"

	clear

	printf "\n\n${yellow}***Please install MetaMod (1/3)***${default}\n\n"
	/home/csgoserver/csgoserver mi

	printf "\n\n${yellow}***Please install SourceMod (2/3)***${default}\n\n"
	/home/csgoserver/csgoserver mi


        printf "\n\n${yellow}***Installing CS:GO Pug Setup (3/3)***${default}\n\n"

	wget -O /tmp/csgo-pug-setup.zip https://github.com/splewis/csgo-pug-setup/archive/master.zip
	unzip -d /tmp /tmp/csgo-pug-setup.zip && rm /tmp/csgo-pug-setup.zip
	rsync -av /tmp/csgo-pug-setup-master /home/csgoserver/serverfiles/csgo/addons/sourcemod
	rm -rf /tmp/csgo-pug-setup-master

	clear
	printf "${green}Installation success!${default}\n\n"
fi

        echo "
                Start your CS:GO server: /home/csgoserver/csgoserver start\n\
                Stop your CS:GO server: /home/csgoserver/csgoserver stop\n\
                Get details of your CS:GO server: /home/csgoserver/csgoserver details\n\
                All available commands: /home/csgoserver/csgoserver\n\
        "

/bin/bash
