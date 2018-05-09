#!/bin/sh

# install CUDA-9.0
# for more information and version detail, please visit https://developer.nvidia.com/cuda-90-download-archive

wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run
sudo sh cuda_9.0.176_384.81_linux-run

# add PATH and LD_CONFIG variables
echo 'export PATH=$PATH:/usr/local/cuda-9.0/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64' >> ~/.bashrc
source ~/.bashrc

# install Patch1
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/1/cuda_9.0.176.1_linux-run
sudo sh cuda_9.0.176.1_linux-run

# install Patch2
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/2/cuda_9.0.176.2_linux-run
sudo sh cuda_9.0.176.2_linux-run

# testing
nvcc --version
