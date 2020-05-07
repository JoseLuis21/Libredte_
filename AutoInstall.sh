#!/bin/bash
apt update 
apt-get install php php-cli php-common curl git mercurial apache2 php-gd php-imap php-curl php-soap php-mbstring php-xml npm postgresql php-pgsql libapache2-mod-php libapache2-mod-php php-intl php-symfony unzip ifstat php-zip  php-pear -y
sleep 2s
npm install xoauth2
pear install Mail Mail_mime Net_SMTP
sleep 2s
echo -e "\n----Vamos a instalar sowerpkg ----"
wget -c https://github.com/SowerPHP/sowerpkg/raw/master/sowerpkg.sh
chmod +x sowerpkg.sh
./sowerpkg.sh install -e "app general" -W
sleep 2s

echo -e "\n----Vamos a instalar Composer ----"
sleep 2s
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
HASH="$(wget -q -O - https://composer.github.io/installer.sig)"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sleep 6s
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

echo -e "\n----Vamos a Clonar Repo LibreDTE ----"
sleep 2s
cd /var/www/html/
git clone --recursive https://github.com/LibreDTE/libredte-webapp.git libredte
cd libredte/website/
composer install
sleep 3s
clear

cp /var/www/html/libredte/website/Config/core-dist.php /var/www/html/libredte/website/Config/core.php
cp /var/www/html/libredte/website/Config/routes-dist.php /var/www/html/libredte/website/Config/routes.php
mkdir /var/www/html/libredte/data/static
mkdir /var/www/html/libredte/data/static/contribuyentes

chgrp www-data /var/www/html/libredte/data/static/contribuyentes/
usermod -a -G www-data www-data
chmod -R 775 /var/www/html/libredte/data/static/contribuyentes/
chown -R www-data:www-data /var/www/html/*

a2enmod rewrite
systemctl restart apache2
clear
su - postgres -c "createdb libredte"  #crea base de datos 
sudo -u postgres psql -c  "create user user_libredte with encrypted password 'libredte*';"
sudo -u postgres psql -c  "grant all privileges on database libredte to user_libredte;"
mv Psql_.sh /home/Psql_.sh
mv script_psql.sh /home/script_psql.sh
sleep 10s
./home/script_psql.sh

