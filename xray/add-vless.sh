#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################

MYIP=$(curl -sS ipv4.icanhazip.com)
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'

clear
# source /var/lib/scrz-prem/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
tls="$(cat ~/log-install.txt | grep -w "Vless TLS" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vless None TLS" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[44;1;39m      Add Xray/Vless Account      \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

		read -rp "User: " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
clear
		echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
		echo -e "\E[44;1;39m      Add Xray/Vless Account      \E[0m"
		echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			echo ""
			read -n 1 -s -r -p "Press any key to back on menu"
			v2ray-menu
		fi
	done

uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vless$/a\#& '"$user $exp"'\
},{"id": "'""$user""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#vlessgrpc$/a\#& '"$user $exp"'\
},{"id": "'""$user""'","email": "'""$user""'"' /etc/xray/config.json
vlesslink1="vless://${user}@104.18.25.139:$tls?sni=${domain}&host=${domain}&type=ws&security=tls&path=%2Fkuota-habis%2F&encryption=none#Tsel_Edu_${domain}"
vlesslink2="vless://${user}@${domain}:$none?host=myorbit.id&path=%2Fkuota-habis%2F&encryption=none&type=ws#Orbit_${domain}"
vlesslink3="vless://${user}@104.18.23.187:$tls?host=${domain}&path=%2Fkuota-habis%2F&type=ws&encryption=none&security=tls&sni=${domain}#Tsel_GameMax_${domain}"
vlesslink4="vless://${user}@104.18.225.52:$tls?host=${domain}&path=%2Fkuota-habis%2F&type=ws&encryption=none&security=tls&sni=${domain}#XL_Vision_${domain}"
vlesslink5="vless://${user}@104.17.3.81:$tls?host=${domain}&path=%2Fkuota-habis%2F&type=ws&encryption=none&security=tls&sni=${domain}#XL_Edu_${domain}"
vlesslink6="vless://${user}@quiz.staging.vidio.com:$tls?host=${domain}&path=%2Fkuota-habis%2F&type=ws&encryption=none&security=tls&sni=${domain}#XL_Vidio_${domain}"
vlesslink7="vless://${user}@investors.spotify.com:$tls?host=${domain}&path=%2Fkuota-habis%2F&type=ws&encryption=none&security=tls&sni=${domain}#XL_Spotify_${domain}"
vlesslink8="vless://${user}@cvs-deo.shopeemobile.com:$tls?host=${domain}&path=%2Fkuota-habis%2F&type=ws&encryption=none&security=tls&sni=${domain}#XL_150GB_${domain}"
systemctl restart xray
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "\E[44;1;39m Vless Account \E[0m" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Remarks : ${user}" | tee -a /etc/log-create-user.log
echo -e "Domain : ${domain}" | tee -a /etc/log-create-user.log
echo -e "port TLS : $tls" | tee -a /etc/log-create-user.log
echo -e "port none TLS : $none" | tee -a /etc/log-create-user.log
echo -e "id : ${user}" | tee -a /etc/log-create-user.log
echo -e "Encryption : none" | tee -a /etc/log-create-user.log
echo -e "Network : ws" | tee -a /etc/log-create-user.log
echo -e "Path : /kuota-habis/" | tee -a /etc/log-create-user.log
#echo -e "Path : /vless-grpc" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Injek Tsel Pendidikan : " | tee -a /etc/log-create-user.log
echo -e "${vlesslink1}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Injek Orbit Opok :  " | tee -a /etc/log-create-user.log
echo -e "${vlesslink2}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Injek GameMax :  " | tee -a /etc/log-create-user.log
echo -e "${vlesslink3}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Injek XL Vision + :  " | tee -a /etc/log-create-user.log
echo -e "${vlesslink4}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Injek XL Edu & Con :  " | tee -a /etc/log-create-user.log
echo -e "${vlesslink5}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Injek XL Vidio :  " | tee -a /etc/log-create-user.log
echo -e "${vlesslink6}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Injek XL Spotify :  " | tee -a /etc/log-create-user.log
echo -e "${vlesslink7}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Injek LiveOn :  " | tee -a /etc/log-create-user.log
echo -e "${vlesslink8}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "@burhansyam | Exp : $exp" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo "" | tee -a /etc/log-create-user.log
