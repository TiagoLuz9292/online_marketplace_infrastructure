#!/bin/bash

# Update the instance
yum update -y

# Install necessary packages
sudo yum install git -y

# Set environment variables
export NODE_ENV=development
export APP_VERSION="1.0"  # Example version, change this accordingly

# Pull the latest code from the repository
cd /home/ec2-user
git clone https://github.com/TiagoLuz9292/online_marketplace_backend.git
cd online_marketplace_backend

# Install Node.js
curl -sL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs

# Install PM2 globally
npm install pm2@latest -g

# Install application dependencies
npm install


# Start the backend and frontend applications using PM2
pm2 start /home/ec2-user/online_marketplace_backend/app.js --name backend --log /var/log/backend.log

# Save the PM2 process list and enable PM2 startup on reboot
pm2 save
pm2 startup

# Log output
echo "User data script has been executed for dev environment."