sudo apt-get update
sudo apt-get install mysql-server
sudo mysql_upgrade -u root -p --force --upgrade-system-tables
mysql --user="root" -e "CREATE DATABASE laravel character set UTF8mb4 collate utf8mb4_bin;"
