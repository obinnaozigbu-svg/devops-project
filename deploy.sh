#!/bin/bash

echo "Updating and Upgrading system..."
sudo apt update && sudo apt upgrade -y

echo "Installing nginx..."
sudo apt install nginx -y

echo "Starting nginx..."
sudo systemctl start nginx

echo "Creating a custom webpage..."

sudo tee /var/www/html/index.html > /dev/null <<EOF
<h1>Obinna's Automated DevOps<h1>
<p>This was deployed using a script<p>
<p>We're going to try to push to git next<p>
EOF

echo "Deployment Complete"
