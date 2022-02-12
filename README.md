# docker-nginx-php

Docker base for a nginx and php container ***(1 container for each service).***
## Installation

Get started with the project.

For this project you need docker and docker-compose.
```bash
  git clone https://github.com/Nick-De-Jager/docker-nginx-php.git
  cd docker-nginx-php
  docker-compose up -d
```
The docker-compose command will do all the work for you, it will install mysqli and pdo for you so you can connect to your mysql server without the need to install it on your own

To see if the containers are working visit your website by going to http://your-server-ip:8080. If everything works you will find a "Hello world" here. 

## How to use

To show your own website you need to put all your website files in the public folder.
