# Auto Install Xray
>apt update && apt upgrade -y && update-grub && sleep 2 && reboot


>wget https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/update-package.sh;chmod +x update-package.sh;./update-package.sh

>reboot

`wget https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh`

jika nginx error
wget -O /etc/xray/xray.crt https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/xray/xray.crt
wget -O /etc/xray/xray.key https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/xray/xray.key
service nginx restart


edit manual

nano /var/lib/scrz-prem/ipvps.conf

nano /etc/xray/config.json

nano /usr/bin/add-vless

nano /usr/bin/add-ws

nano /etc/nginx/conf.d/xray.conf

