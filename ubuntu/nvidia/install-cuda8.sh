#!/bin/sh

# install CUDA-8.0
# for more information and version detail, please visit https://developer.nvidia.com/cuda-80-ga2-download-archive

wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_375.26_linux-run
sudo sh cuda_8.0.61_375.26_linux-run

# add PATH and LD_CONFIG variables
echo 'export PATH=$PATH:/usr/local/cuda-8.0/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64' >> ~/.bashrc
source ~/.bashrc

# install Patch2
wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/patches/2/cuda_8.0.61.2_linux-run
sudo sh cuda_8.0.61.2_linux-run

# testing
nvcc --version
