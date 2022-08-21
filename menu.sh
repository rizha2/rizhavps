#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
IZIN=$( curl https://raw.githubusercontent.com/rizha2/access/main/ip | grep $MYIP )
if [ $MYIP = $IZIN ]; then
clear
echo -e "${green}Tahniah! Anda Dibenarkan menggunakan Script Ini...${NC}"
else
clear
echo ""
rm -f setup.sh
echo '                            ...                           '
echo '        Anda Tidak Dibenarkan Menggunakan Script ini!     '
echo '                            ...                           '
echo '                  Telegram t.me/mastar72g               '
sleep 20
exit 0
fi
clear
echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
echo -e "* TIME          : $jam"
echo -e "* DAY           : $hari"
echo -e "* DATE          : $tnggl"
echo -e "* SERVER        : $ISP"
echo -e "* City          : $CITY"
echo -e "* IP VPS        : $IPVPS"
echo -e ""
echo '    _   _____   __________   __  ______     ____________________  __ '
echo '   / | / /   | / ___/__  /  / / / / __ \   /_  __/ ____/ ____/ / / / '
echo '  /  |/ / /| | \__ \  / /  / / / / /_/ /    / / / __/ / /   / /_/ /  '
echo ' / /|  / ___ |___/ / / /__/ /_/ / _, _/    / / / /___/ /___/ __  /   '
echo '/_/ |_/_/  |_/____/ /____/\____/_/ |_|    /_/ /_____/\____/_/ /_/    '
echo '                    PREMIUM SCRIPT BY NASZUR!                        '
echo -e ""
echo -e "\e[1;33m=============================-Menu-=============================\e[0m'"
echo -e "\e[1;33m*               Senarai Menu yang Disediakan\e[0m"
echo -e ""
echo -e "\e[1;33m=========================-List Protocol-========================\e[0m'"
echo -e "\e[1;31m* [1]\e[0m  \e[1;32m: SSH & OVPN PANEL\e[0m"
echo -e "\e[1;31m* [2]\e[0m  \e[1;32m: VMESS PANEL\e[0m"
echo -e "\e[1;31m* [3]\e[0m  \e[1;32m: VLESS PANEL\e[0m"
echo -e "\e[1;31m* [4]\e[0m \e[1;32m: XRAY PANEL\e[0m"
echo -e "\e[1;31m* [5]\e[0m \e[1;32m: TROJAN PANEL\e[0m"
echo -e ""
echo -e "\e[1;33m=============================-SYSTEM-==========================\e[0m\e[0m'"
echo -e "\e[1;31m* [6]\e[0m \e[1;32m: Add Or Change Subdomain Host For VPS\e[0m"
echo -e "\e[1;31m* [7]\e[0m \e[1;32m: Renew Certificate \e[0m"
echo -e "\e[1;31m* [8]\e[0m \e[1;32m: Change Port Of Some Service\e[0m"
echo -e "\e[1;31m* [9]\e[0m \e[1;32m: Autobackup Data VPS\e[0m"
echo -e "\e[1;31m* [10]\e[0m \e[1;32m: Backup Data VPS\e[0m"
echo -e "\e[1;31m* [11]\e[0m \e[1;32m: Restore Data VPS\e[0m"
echo -e "\e[1;31m* [12]\e[0m \e[1;32m: Webmin Menu\e[0m"
echo -e "\e[1;31m* [13]\e[0m \e[1;32m: Update To Latest Kernel\e[0m"
echo -e "\e[1;31m* [14]\e[0m \e[1;32m: Limit Bandwith Speed Server\e[0m"
echo -e "\e[1;31m* [15]\e[0m \e[1;32m: Check Usage of VPS Ram\e[0m"
echo -e "\e[1;31m* [16]\e[0m \e[1;32m: Reboot VPS\e[0m"
echo -e "\e[1;31m* [17]\e[0m \e[1;32m: Speedtest VPS\e[0m"
echo -e "\e[1;31m* [18]\e[0m \e[1;32m: Update To Latest Script Version\e[0m"
echo -e "\e[1;31m* [19]\e[0m \e[1;32m: Displaying System Information\e[0m"
echo -e "\e[1;31m* [20]\e[0m \e[1;32m: Info Script Auto Install\e[0m"
echo -e "\e[1;31m* [21]\e[0m \e[1;32m: Exit From VPS \e[0m"

echo -e ""
echo -e "\e[1;33m====================================================================\e[0m"
echo -e ""
read -p "        Select From Options [1-21 or x]: " menu
echo -e ""
case $menu in
1)
menu-ssh 
;;
2)
menu-vmess
;;
3)
menu-vless 
;;
4)
menu-xray 
;;
5)
menu-trojan 
;;
6)
add-host
;;
7)
certv2ray
;;
8)
change-port
;;
9)
autobackup
;;
10)
backup
;;
11)
restore
;;
12)
wbmn
;;
13)
kernel-updt
;;
14)
limit-speed
;;
15)
ram
;;
16)
reboot
;;
17)
speedtest-cli
;;
18)
update
;;
19)
info
;;
20)
about
;;
21)
exit
;;
x)
exit
menu
;;
*)
echo " Tolong masukkan nombor yang betul!!"
;;
esac
