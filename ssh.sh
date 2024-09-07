#!/bin/bash

# Script to install SSH server and allow root login on Debian

# Update package list and install OpenSSH server
sudo apt update
sudo apt install -y openssh-server

# Allow root login by modifying sshd_config
sudo sed -i 's/^#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config

# Restart SSH service to apply changes
sudo systemctl restart ssh

# Display message
echo "SSH server installed, and root login is enabled."