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

git checkout tags/v1.0 -b v1.0-branch

# Install Node.js
curl -sL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs

npm install aws-sdk

# Install PM2 globally
npm install pm2@latest -g

# Install application dependencies
npm install

# Install PostgreSQL client libraries
npm install pg sequelize pg-hstore


# Create the .env file with the correct database configuration
cat <<EOF > .env
# Server Configuration
PORT=80

# JWT Secret
JWT_SECRET=711f37a640b01ff35c8a9650cc723a51daf203a81d9949d286a3919422229c8e0b4cfd71a3d0fe5c31dc049e79777983497351e86f4e3b61f82b211a80f39fe6

# PostgreSQL Database Configuration
PG_DATABASE=online_marketplace_db
PG_USER=online_marketplace_user
PG_PASSWORD=admin
PG_HOST=10.1.1.74
PG_PORT=5432
EOF

# Start the backend application using PM2
pm2 start /home/ec2-user/online_marketplace_backend/app.js --name backend --log /var/log/backend.log

# Save the PM2 process list and enable PM2 startup on reboot
pm2 save
pm2 startup

# Log output
echo "User data script has been executed for dev environment."