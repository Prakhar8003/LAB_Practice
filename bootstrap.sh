#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install MySQL
echo "Installing MySQL..."
sudo apt-get install -y mysql-server

# Install MongoDB
echo "Installing MongoDB..."
sudo apt-get install -y mongodb

# Install PostgreSQL
echo "Installing PostgreSQL..."
sudo apt-get install -y postgresql postgresql-contrib

# Clean up
echo "Cleaning up..."
sudo apt-get clean

echo "MySQL, MongoDB, and PostgreSQL installation complete!"
