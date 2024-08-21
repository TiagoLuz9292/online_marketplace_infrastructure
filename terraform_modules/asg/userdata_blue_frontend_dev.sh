#!/bin/bash

# Update the instance
yum update -y

# Install necessary packages
yum install git -y

# Set environment variables
export NODE_ENV=production
export APP_VERSION="1.1"  # Example version, change this accordingly

# Pull the latest code from the repository
cd /home/ec2-user
git clone https://github.com/TiagoLuz9292/online_marketplace_frontend.git
cd online_marketplace_frontend

git checkout tags/v1.1 -b v1.1-branch

# Install Node.js
curl -sL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs

# Install PM2 globally
npm install pm2@latest -g

# Install Webpack and Webpack CLI globally
npm install -g webpack webpack-cli

# Install application dependencies
npm install

# Build the application using Webpack
npm run build

# Install a simple HTTP server to serve the build
npm install -g serve

# Serve the build using PM2
pm2 start "serve -s build -l 80" --name frontend --log /var/log/frontend.log

# Save the PM2 process list and enable PM2 startup on reboot
pm2 save
pm2 startup

# Log output
echo "User data script has been executed for dev environment."