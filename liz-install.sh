#!/bin/bash

#Install Requirements for Strelizia.

apt update -y
apt install git -y
apt install python -y
apt install python-pip -y
apt install ruby -y
apt install nmap -y
apt install whois
#DirSearch Install....
cd lib;git clone https://github.com/maurosoria/dirsearch
#golismero
git clone https://github.com/golismero/golismero
cd golismero;pip install -r requirements.txt
cd ..
#Nikto
git clone https://github.com/sullo/nikto
#RapidScan
git clone https://github.com/skavngr/rapidscan
#spaghetti
git clone https://github.com/n4yk/Spaghetti
cd Spaghetti
pip install -r requirements.txt
cd ..
#Sublist3r
git clone https://github.com/aboul3la/Sublist3r
cd Sublist3r
pip install -r requirements.txt
cd ..
#WAScan
git clone https://github.com/m4ll0k/WAScan
#WhatWeb
git clone https://github.com/urbanadventurer/WhatWeb
#####
cd ..;chmod +x liz.sh
echo "All Requirements File Done!"
sleep 1
echo "Type ./liz.sh to Run Strelizia."






