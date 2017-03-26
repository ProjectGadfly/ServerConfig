#!/bin/bash
sudo apt-get install apache2 libapache2-mod-wsgi-py3 python3-flask python3.5 python3.5-venv python3-requests python3-pip python3-bs4 git
cd /var/www/
sudo git clone https://github.com/ProjectGadfly/ServerConfig.git
sudo mkdir GFServer
sudo mv ServerConfig/* GFServer/ 
sudo rm -R ServerConfig/
cd GFServer/services/
sudo mv GFServer.conf /etc/apache2/sites-available/
sudo sed -i '1 a\127.0.0.1       GFServer' /etc/hosts
sudo a2ensite GFServer
service apache2 reload
service apache2 restart
