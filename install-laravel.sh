# Clear Existing Workspace
rm README.md php.ini hello-world.php

# Install PHP 7.1
# The following PHP script was coded by https://github.com/svpernova09 
#!/bin/bash
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update -y

sudo apt-get install php7.1-curl php7.1-cli php7.1-dev php7.1-gd php7.1-intl php7.1-mcrypt php7.1-json php7.1-mysql php7.1-opcache php7.1-bcmath php7.1-mbstring php7.1-soap php7.1-xml php7.1-zip -y

sudo mv /etc/apache2/envvars /etc/apache2/envvars.bak
sudo apt-get remove libapache2-mod-php5 -y
sudo apt-get install libapache2-mod-php7.1 -y
sudo cp /etc/apache2/envvars.bak /etc/apache2/envvars

sudo a2dismod php5
sudo a2enmod php7.1

sudo service apache2 restart

# Install Laravel
sudo composer self-update
sudo composer create-project --prefer-dist laravel/laravel ./laravel
shopt -s dotglob
sudo chown -R ubuntu:ubuntu laravel
sudo mv laravel/* ./
sudo rm -rf laravel
sudo sed -i 's/DocumentRoot\ \/home\/ubuntu\/workspace/DocumentRoot\ \/home\/ubuntu\/workspace\/public/g' /etc/apache2/sites-enabled/001-cloud9.conf
sudo composer update
sudo chmod -R 777 storage
