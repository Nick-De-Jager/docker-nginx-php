#!/bin/bash

function setupDocker() {
    sudo apt-get install docker
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker
    sudo systemctl enable docker.service
    sudo systemctl enable containerd.service
    echo "Docker is installed"
}

function getGit() {
    sudo apt install git
    echo "Git is installed"
}

function getDependencies{
    setupDocker
    getGit
}

function getFiles() {
    git clone https://git.nickdejager.nl/docker-nginx-php
    cd docker-nginx-php
}

function startSetup() {
    docker-compose up -d
    echo "Docker image and containers are created"
}

function main() {
    sudo apt update && sudo apt upgrade -y
    echo "Updated everything"
    getDependencies
    getFiles
    startSetup
    echo "Project is setup, open http://{your-server-ip}:8080"
}

main
