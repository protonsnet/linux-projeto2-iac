#!/bin/bash

echo "Instalando apache e unzip"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Copiando site para a pasta do apache"
cd /tmp
wget github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /linux-site-dio-main
cp -R * /var/www/html/
cd /tmp
rm -R linux-site-dio-main
echo "Fim do script"
