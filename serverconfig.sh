#!/bin/bash
apt-get -y install apache2 libapache2-mod-wsgi-py3 python3-flask python3.5 python3.5-venv python3-requests python3-pip python3-bs4
cd /var/www/
mkdir GFServer
mv ServerConfig/* GFServer/ 
rm -R ServerConfig/
cd GFServer/services/
mv GFServer.conf /etc/apache2/sites-available/
sed -i '1 a\127.0.0.1       GFServer' /etc/hosts
a2ensite GFServer
service apache2 restart
