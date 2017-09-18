# Clear Existing Workspace
rm php.ini hello-world.php

# Install PHP 7.1
# The following PHP script was coded by https://github.com/svpernova09 
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update -y

sudo apt-get install php7.1-curl php7.1-cli php7.1-dev php7.1-gd php7.1-intl php7.1-mcrypt php7.1-json php7.1-mysql php7.1-opcache php7.1-bcmath php7.1-mbstring php7.1-soap php7.1-xml php7.1-zip -y

sudo mv /etc/apache2/envvars /etc/apache2/envvars.bak
sudo apt-get remove libapache2-mod-php5 -y
sudo apt-get install libapache2-mod-php7.1 -y
sudo cp /etc/apache2/envvars.bak /etc/apache2/envvars

sudo a2dismod php5
sudo a2enmod php7.1

# Install Laravel
sudo composer self-update
sudo composer global require 'laravel/installer'
export PATH=~/.composer/vendor/bin:$PATH
laravel new
sudo sed -i 's/DocumentRoot\ \/home\/ubuntu\/workspace/DocumentRoot\ \/home\/ubuntu\/workspace\/public/g' /etc/apache2/sites-enabled/001-cloud9.conf

sudo service apache2 restart


# setup npm and nodejs for web mixing
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install
sudo npm rebuild node-sass

#Install MySQL 5.7y
wget https://dev.mysql.com/get/mysql-apt-config_0.8.7-1_all.deb



