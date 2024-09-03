#!/bin/bash

# Update package list and install necessary packages
sudo apt-get update
sudo apt-get install linux-headers-$(uname -r) build-essential -y

# Download and install CUDA
CUDA_VERSION="12.6.0"
CUDA_RUNFILE="cuda_${CUDA_VERSION}_560.28.03_linux.run"
wget "https://developer.download.nvidia.com/compute/cuda/${CUDA_VERSION}/local_installers/${CUDA_RUNFILE}"
sudo sh ${CUDA_RUNFILE}

# Install NVIDIA CUDA toolkit
sudo apt install nvidia-cuda-toolkit -y

# Update environment variables
echo 'export PATH=/usr/local/cuda-12.6/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc

# Reboot the system
sudo reboot
