#!/bin/bash


sudo apt update
sudo apt install wget -y
sudo apt install unzip -y

mkdir -p ~/Hashicorp/Vault
mkdir -p ~/Hashicorp/Consul
sudo mkdir -p /etc/vault
sudo mkdir -p /etc/consul

cd ~/Hashicorp/Vault

wget https://releases.hashicorp.com/vault/1.14.0/vault_1.14.0_linux_arm64.zip
unzip vault_1.14.0_linux_arm64.zip
rm -rf vault_1.14.0_linux_arm64.zip

sudo cp ~/Hashicorp/Vault/vault /bin/
sudo cp ~/vault.hcl /etc/vault/
sudo cp ~/vault.service /etc/systemd/system/

cd ~/Hashicorp/Consul
wget https://releases.hashicorp.com/consul/1.14.4/consul_1.14.4_linux_amd64.zip
unzip consul_1.14.4_linux_amd64.zip
rm -rf consul_1.14.4_linux_amd64.zip

sudo cp ~/Hashicorp/Consul/consul /bin/
sudo cp ~/consul.json /etc/consul/
sudo cp ~/consul.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl restart vault.service
sudo systemctl restart consul.service

#/etc/systemd/system/vault.service 