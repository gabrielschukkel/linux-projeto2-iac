#!/bin/bash
echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp

echo "Baixando e copiando oos arquivos da aplicação"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html
