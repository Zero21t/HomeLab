#!/bin/bash

sudo apt install -y apt-transport-https ca-certificates curl gnupg
sudo apt install curl -y
sudo apt install net-tools -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor --yes -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt install -y docker.io docker-ce docker-ce-cli containerd.io

