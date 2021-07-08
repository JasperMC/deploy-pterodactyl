#!/bin/sh

sudo apt install git curl

sudo curl -o get-docker.sh https://get.docker.com/
sh get-docker.sh
rm get-docker.sh
sudo mkdir /srv/app

# Check permissions
sudo chown -R admin:admin /srv/app

cd /srv/app

# Get pterodactyl
git clone https://github.com/ccarney16/pterodactyl-containers

cd pterodactyl

# Configure pterodactyl
bin/deploy --daemon

# Edit panel.env


# Launch
sudo docker-compose up -d



