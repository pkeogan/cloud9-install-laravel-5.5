# Cloud9 Laravel 5.5 Installer
## DO NOT USE THIS IN A PRODUCTION ENVIROMENT - YOU HAVE BEEN WARNED
This installer setups laravel 5.5 and php7.1 onto a fresh Cloud9 (c9.io) workspace. Just run the script, and bam your ready to start programming. 

## Features
- Installs PHP 7.1
- Removed Default C9 Files
- Puts laravel in root workspace folder and self cleans
- Changes DocumentRoot to /public
- Manages Permissions

## How To Use
### Step 1
Create a new workspace in Cloud9
<img src="https://github.com/pkeogan/cloud9-install-laravel-5.5/blob/master/step-2.png">
### Step 2
Open created Workspace then go to terminal
### Step 3
Get the install-laravel.sh
```sh
wget "https://raw.githubusercontent.com/pkeogan/cloud9-install-laravel-5.5/v0.1/install-laravel.sh"
```
### Step 4
Run The Install
```sh
bash install-laravel.sh
```
### Step 5
Run the app and you will see the default laravel site.

## To Do
- Add SQL Server Setup
- Connnect larvel to SQL DB
- Auto Edit ENV File
- Auto rekey 

## How it Works

- Remove existing C9 files
- Install PHP7.1
- Restart Apache Server
- Install Laravel
- Change DocumentRoot to /public
- chmod 777 storage
- Remove install related items


This Script's PHP Install was forked from @svpernova09's https://github.com/svpernova09/cloud9-php71
