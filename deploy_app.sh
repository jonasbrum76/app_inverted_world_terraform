#!/bin/bash

sudo apt-get update
sudo apa-get upgrade -y

sudo apt-get install apache2 -y

sudo git clone https://github.com/jonasbrum76/mundo-invertido.git
cd mundo-invertido 
cp cp -R * /var/www/html

