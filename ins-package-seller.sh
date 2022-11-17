#!/bin/bash

wget -O /usr/local/bin/add-ssh-user "https://raw.githubusercontent.com/hidessh99/Package-tambahan-Seller/main/add-ssh-user.sh" && chmod +x /usr/local/bin/add-ssh-user
wget -O /usr/local/bin/add-vmess-user "https://raw.githubusercontent.com/hidessh99/Package-tambahan-Seller/main/add-vmess-user.sh" && chmod +x /usr/local/bin/add-vmess-user
wget -O /usr/local/bin/del-vmess-user "https://raw.githubusercontent.com/hidessh99/Package-tambahan-Seller/main/del-vmess-user.sh" && chmod +x /usr/local/bin/del-vmess-user
wget -O /usr/local/bin/add-trojan-user "https://raw.githubusercontent.com/hidessh99/Package-tambahan-Seller/main/add-trojan-user.sh" && chmod +x /usr/local/bin/add-trojan-user
wget -O /usr/local/bin/del-trojan-user "https://raw.githubusercontent.com/hidessh99/Package-tambahan-Seller/main/del-trojan-user.sh" && chmod +x /usr/local/bin/del-trojan-user

#hapus file
cd
rm -rf ins-package-seller.sh