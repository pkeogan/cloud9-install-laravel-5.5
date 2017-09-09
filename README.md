# Cloud9 Laravel 5.5 Installer
This install.sh script installs laravel 5.5 and php7.1 onto a fresh Cloud9 (c9.io) workspace. Just run install-larvel.sh, let it run, then go start your app and laravel will be viewable!

## How To Use
### Step 1
Create a new workspace in Cloud9
<img src="https://github.com/pkeogan/cloud9-install-laravel-5.5/blob/master/step-2.png">
### Step 2
Open created Workspace then go to terminal
### Step 3
Get the install-laravel.sh
```sh
$ wget "https://raw.githubusercontent.com/pkeogan/cloud9-install-laravel-5.5/v0.1/install-laravel.sh"
```
### Step 4
Run The Install
```sh
$ bash install-laravel.sh
```
### Step 5
Run the app and you will see the default laravel site.

## How it Works

- Remove existing C9 files
- Install PHP7.1
- Restart Apache Server
- Install Laravel
- Change DocumentRoot to /public
- chmod 777 storage
- Remove install related items


This Script's PHP Install was forked from @svpernova09's https://github.com/svpernova09/cloud9-php71
