# Auto Install Xray
## Rekomendasi Ubuntu OS 20

Update OS awal
```
apt update && apt upgrade -y && update-grub && sleep 2 && reboot
```

# Update beberapa paket tambahan
```
wget https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/update-package.sh;chmod +x update-package.sh;./update-package.sh
```
## Kemudian Restart VPS
```
reboot
```
# Lanjut Install Script di VPS
```
wget https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh
```
# Jika nginx error
```
wget -O /etc/xray/xray.crt https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/xray/xray.crt
wget -O /etc/xray/xray.key https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/xray/xray.key
service nginx restart
```

# Edit manual sesuai kebutuhan

edit domain manual
nano /var/lib/scrz-prem/ipvps.conf
edit config xray
nano /etc/xray/config.json
edit add user vlsee
nano /usr/bin/add-vless
edit add user vmess
nano /usr/bin/add-ws
edit nginx
nano /etc/nginx/conf.d/xray.conf

#Khusus VPS ATHA ketika kena limit IX
`sudo vi /etc/apt/sources.list`

`deb http://kartolo.sby.datautama.net.id/ubuntu/ bionic main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ bionic-updates main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ bionic-security main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ bionic-backports main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ bionic-proposed main restricted universe multiverse`
