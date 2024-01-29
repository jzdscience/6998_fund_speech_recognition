#!/bin/bash

sudo apt-get -y install build-essential
sudo apt-get -y install git
git clone https://github.com/kaldi-asr/kaldi.git kaldi-trunk --origin golden
#sudo echo "deb http://dk.archive.ubuntu.com/ubuntu/ trusty main universe1
#deb http://dk.archive.ubuntu.com/ubuntu/ trusty-updates main universe" >> /etc/apt/sources.list
sudo echo "deb http://dk.archive.ubuntu.com/ubuntu/ trusty-updates main universe" >> /etc/apt/sources.list
sudo apt-get -y update

sudo apt-get -y install linux-headers-$(uname -r)
sudo apt-get -y install flac libflac-dev; 
sudo apt-get -y install libatlas*; 
sudo apt-get -y install subversion; 
sudo apt-get -y install speex libspeex-dev; 
sudo apt-get -y install python-numpy swig; 
sudo apt-get -y install gstreamer-1.0 libgstreamer-1.0-dev; 
sudo apt-get -y install libgstreamer-plugins*; 
sudo apt-get -y install python-pip; pip install --upgrade pip; pip install ws4py; pip install tornado==4; 
sudo apt-get -y install python-anyjson; 
sudo apt-get -y install libyaml-dev; pip install pyyaml; 
sudo apt-get -y install libjansson-dev;
sudo apt-get -y install gnome-applets
sudo apt-get -y install sox

# Do not install CUDA in the beginning.  Only do it once you have finished
# running all the CPU-based steps for your project and need to have GPU access.
# Otherwise you will run out of coupon credits very quickly.  I spoke about this
# in detail in the class.
# When you are ready to install cuda, follow the steps using the following link:  https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html
