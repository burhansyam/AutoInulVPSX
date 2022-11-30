#!/bin/bash


#tambah akun SSH
wget -O /usr/local/bin/add-ssh-user "https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/add-ssh-user.sh" && chmod +x /usr/local/bin/add-ssh-user
#tambah akun Vmess
wget -O /usr/local/bin/add-vmess-user "https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/add-vmess-user.sh" && chmod +x /usr/local/bin/add-vmess-user
#tambah Akun Trojan
wget -O /usr/local/bin/add-trojan-user "https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/add-trojan-user.sh" && chmod +x /usr/local/bin/add-trojan-user

#auto deleted akun 
wget -O /usr/local/bin/del-vmess-user "https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/del-vmess-user.sh" && chmod +x /usr/local/bin/del-vmess-user
wget -O /usr/local/bin/del-trojan-user "https://raw.githubusercontent.com/burhansyam/AutoInulVPSX/main/del-trojan-user.sh" && chmod +x /usr/local/bin/del-trojan-user

#hapus file
cd
rm -rf ins-package-seller.sh
