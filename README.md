sudo mkdir /var/www/

sudo apt-get -y install git

cd /var/www

sudo git clone https://github.com/ProjectGadfly/ServerConfig.git

cd ServerConfig/

sudo chmod +x serverconfig.sh

sudo /var/www/ServerConfig/serverconfig.sh



After running the shell script:

sudo mysql_secure_installation
