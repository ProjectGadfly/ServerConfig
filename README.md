sudo mkdir /var/www/
sudo apt-get install git
cd /var/www
sudo git clone https://github.com/ProjectGadfly/ServerConfig.git
cd ServerConfig/
sudo chmod +x serverconfig.sh
/var/www/ServerConfig/serverconfig.sh
