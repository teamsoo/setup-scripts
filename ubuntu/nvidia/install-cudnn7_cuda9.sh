#!/bin/sh

# Note: the below link is broken, because it's not support hot link
# please visit: https://developer.nvidia.com/rdp/cudnn-download

echo 'please visit this link and download manually (hot link is prohibited)'
echo '==> https://developer.nvidia.com/rdp/cudnn-download'

tar xvf cudnn-9.0-linux-x64-v7.tgz
sudo cp -P cuda/include/cudnn.h /usr/local/cuda/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*




