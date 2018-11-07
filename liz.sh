#!/bin/bash

############################
# Strelizia Auto Scan Tools#
# coded by: Yukki666       #
############################

cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
purple="\033[0;35m"
yellow='\e[0;33m'
cafe="\033[0;33m"
BlueF='\e[1;34m' #Biru
RESET="\033[00m" #normal
orange='\e[38;5;166m'

distro=`cat /etc/issue.net`
codename='Mecha'
ver='V.0.1'

trap ctrl_c INT
function ctrl_c() {
    clear
    echo -e $red"[!] Ctrl C Detected!"
    sleep 1
    echo -e $cyan"[-] Stopping all Services....  "
    sleep 1.4
    echo -e $okegreen"[+] Done! "
    sleep 1
    exit
}

clear
which nmap > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $cafe "[ ✔ ] Nmap..............$okegreen[ found ]"
sleep 1
which nmap > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Nmap Instalation Not Found! "
exit
fi

which whois > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
sleep 1
echo -e $cafe "[ ✔ ] Whois..............$okegreen[ found ]"
sleep 1
which whois > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] whois Instalation Not Found! "
exit
fi

which python > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
sleep 1
echo -e $cafe "[ ✔ ] Python..............$okegreen[ found ]"
sleep 1
which python > /dev/null 2>&1
sleep 2
else
sleep 1
echo -e $red "[ X ] Python Instalation Not Found! "
exit
fi

which ruby > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
sleep 1
echo -e $cafe "[ ✔ ] Ruby..............$okegreen[ found ]"
sleep 1
which ruby > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Ruby Instalation Not Found! "
exit
fi

which perl > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
sleep 1
echo -e $cafe "[ ✔ ] Perl..............$okegreen[ found ]"
sleep 1
which perl > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Perl Instalation Not Found! "
exit
fi

which pip > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
sleep 1
echo -e $cafe "[ ✔ ] Pip..............$okegreen[ found ]"
sleep 1
which pip > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] pip Instalation Not Found! "
exit
fi

if [ "$?" -eq "0" ]; then
echo -e $okegreen "You Requirements is All Installed!"
sleep 1
clear
else 
clear
echo -e $red "Your Requirements Not Installed!! type ./liz-install.sh! "
sleep 0.4
exit
fi

sleep 1.3
echo -e $purple"                        ug"
echo -e $purple"                       b"
echo -e $purple"                      g           bug"
echo -e $purple"                      u        bug"
echo -e $purple"      bugbug          b       g"
echo -e $purple"            bug      bugbug bu"
echo -e $purple"               bug  bugbugbugbugbugbug"
echo -e $purple"  bug   bug   bugbugbugbugbugbugbugbugb"
echo -e $purple"     bug   bug bugbugbugbugbugbugbugbugbu"
echo -e $purple"   bugbugbugbu ╔═╗┌┬┐┬─┐┌─┐┬  ┬┌─┐┬┌─┐"
echo -e $RESET"  bugbugbugbug ╚═╗ │ ├┬┘├┤ │  │┌─┘│├─┤"
echo -e $RESET"   bugbugbugbu ╚═╝ ┴ ┴└─└─┘┴─┘┴└─┘┴┴ ┴"
echo -e $RESET"     bug   bug bugbugbugbugbugbugbugbugbu"
echo -e $RESET"  bug   bug  gbugbugbugbugbugbugbugbugb"
echo -e $RESET"               bug  bugbugbugbugbugbug"
echo -e $RESET"            bug      bugbug  bu"
echo -e $RESET"      bugbug          b        g"
echo -e $RESET"                      u         bug"
echo -e $RESET"                      g            bug"
echo -e $RESET"                       b"
echo -e $RESET"                         ug"
echo ""
echo -e $cafe "       $distro | $ver | Strelizia Framework"
echo ""
echo -e "    $red[$green+$red]$cyan Codename	 $RESET : $cafe$codename                             $red[$green+$red]$RESET"
echo -e "    $red[$green+$red]$cyan Code by$RESET 	  : Yukki666                          $red[$green+$red]$RESET"
echo -e "    $red[$green+$red]$cyan Blog Team $RESET        : http://blog.garudatersakti72.id/  $red[$green+$red]$RESET"
echo ""
read -p "Enter your web to scan: " tar;
echo ""

echo -e $cafe "Please wait, Starting Strelizia......$nc"
sleep 2.1
echo -e "$red[$green+$red]$nc Strelizia Started!"
sleep 1
nmap -v -O $tar
sleep 1
sslscan $tar
cd lib;cd WhatWeb
ruby whatweb -v $tar
cd ..;cd dirsearch
python3 dirsearch.py -u $tar -e php
sleep 1
cd ..;cd golismero
echo ""
python2 golismero.py scan $tar 
sleep 1
cd ..
cd nikto/program
perl nikto.pl -h $tar
cd ..
sleep 1
echo ""
cd ..;cd rapidscan
python rapidscan.py $tar
sleep 1
cd ..;cd sublist3r
python sublist3r.py --domain $TARGET
sleep 1
cd ..;cd Spaghetti
python spaghetti.py --url http://$TARGET --scan [0-3]
sleep 1
cd ..;cd WAScan
python wascan.py $tar
sleep 1
wafw00f http://$tar
sleep 1.4
echo -e $green "Scanning done at$nc `date`"
sleep 1
echo -e $okegreen "Thank's for Use Strelizia.. "
sleep 0.4
echo -e $nc "Exiting Strelizia...."
sleep 1
exit

#DONE.
