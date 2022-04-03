# docker-nginx-php

Docker base for a nginx and php container ***(1 container for each service).***

## Installation

You can use two ways to start with this project:
Setup the project with the setup script or setup the project manually.

## Setup with the setup script

Copy the script code from [here](https://raw.githubusercontent.com/Nick-De-Jager/docker-nginx-php/master/setup.sh)

```
nano setup.sh
```

Past the shell code

```
chmod +x filename.sh
```

Place your website content in the public folder and open the website on [http://server-ip:8080](http://server-ip:8080)

## Setup manually

clone the repo

```
git clone https://git.nickdejager.nl/docker-nginx-php
cd docker-nginx-php
```

If you haven't installed docker yet, install and set it up with the following commands

```
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

now to create the images and start the containers run

```
docker-compose up -d
```

Place your website content in the public folder and open the website on [http://server-ip:8080](http://server-ip:8080)
