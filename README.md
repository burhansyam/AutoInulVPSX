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
```
nano /var/lib/scrz-prem/ipvps.conf
```
edit config xray
```
nano /etc/xray/config.json
```
edit add user vless
```
nano /usr/bin/add-vless
```
edit add user vmess
```
nano /usr/bin/add-ws
```
edit nginx
```
nano /etc/nginx/conf.d/xray.conf
```
#Khusus VPS ATHA ketika kena limit IX
```
sudo cp /etc/apt/sources.list /etc/apt/sources.list.ori
```
Lanjut
```
rm /etc/apt/sources.list
```
Lalu buat baru
```
sudo nano /etc/apt/sources.list
```
Ubuntu 18 Tambahkan
```
deb http://kartolo.sby.datautama.net.id/ubuntu/ bionic main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ bionic-updates main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ bionic-security main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ bionic-backports main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ bionic-proposed main restricted universe multiverse
```

Ubuntu 20 tambahkan 
```
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-updates main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-security main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-backports main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-proposed main restricted universe multiverse
```
Khusus Untuk Idcloudhost
```
sudo cp /etc/default/grub /etc/default/grub.bak
```
lalu
```
sudo nano /etc/default/grub
```
cari baris GRUB_DEFAULT=0 lalu ganti dengan kode dibawah ini :
```
GRUB_DEFAULT='Advanced options for Ubuntu>Ubuntu, with Linux 5.4.0-152-generic'
```
lalu terakhir dan reboot
sudo update-grub
