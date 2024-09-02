#!/bin/bash

# Update package lists and install unzip
sudo apt-get update
sudo apt-get install -y unzip

# Download Shasta executable
curl -O -L https://github.com/paoloshasta/shasta/releases/download/0.11.1/shasta-Linux-0.11.1

# Make the Shasta executable file executable
chmod ugo+x shasta-Linux-0.11.1

# Download AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip AWS CLI package
unzip awscliv2.zip

# Install AWS CLI
sudo ./aws/install

# Configure AWS CLI
aws configure

