#!/bin/bash
# Update all packages
sudo apt update -y
# Install Nginx
sudo apt install nginx -y
# Enable Nginx to start on boot
sudo systemctl enable nginx
# Start Nginx service
sudo systemctl start nginx
