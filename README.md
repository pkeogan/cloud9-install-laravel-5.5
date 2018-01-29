# Cloud9 Laravel 5.5 Installer
## Will Not Be Updated (I moved to CodeAnyWhere.com after Amazon Merger) 
### In the future I will recreate this for CodeAnyWhere Containers
## DO NOT USE THIS IN A PRODUCTION ENVIROMENT - YOU HAVE BEEN WARNED
This installer setups laravel 5.5, MySQL 5.7 and php7.1 onto a fresh Cloud9 (c9.io) workspace. Just run the script, do some input, and bam your ready to start programming. Also gets npm and nodejs ready so you can webmix. 

## Changes for this fork
- One minor but important change is this installs laravel as normal, not root user.

  Running the laravel install as root is not recommended (the install attempt will say so) and will break the project creation functionality.

## Features
- Installs PHP 7.1
- Removed Default C9 Files
- Puts laravel in root workspace folder
- Changes DocumentRoot to /public
- Upgrades MySQL 5.7

## How To Use
### Step 1
Create a new workspace in Cloud9
<img src="https://github.com/pkeogan/cloud9-install-laravel-5.5/blob/master/step-2.png">
### Step 2
Open created Workspace then go to terminal
### Step 3
Get the install-laravel.sh
```sh
wget "https://raw.githubusercontent.com/karlkras/cloud9-install-laravel-5.5/master/install-laravel.sh"
```
### Step 4
Run The Install
```sh
bash install-laravel.sh
```
### Step 5
Run the MySQL Upgrade, make sure you select 5.7, default will be 5.6
```sh
sudo dpkg -i mysql-apt-config_0.8.7-1_all.deb
```
### Step 6
Run The MySQL Install SH
```sh
wget "https://raw.githubusercontent.com/karlkras/cloud9-install-laravel-5.5/master/mysql.sh"
bash mysql.sh
```
If you get any input for passwords, enter blank, and you may need to hit "y" for downloads.
### Step 7
Edit your .env DB info. 
```sh
...
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=
...
```
### Step 8, your ready!

MAke sure you migrate and run your npm mix
```sh
php artisan migrate
npm run dev
```

And thats it, your ready to go!

This Script's PHP Install was forked from @svpernova09's https://github.com/svpernova09/cloud9-php71
