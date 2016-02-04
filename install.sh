#!/bin/bash

# Install Open CV 3.0.0
# git clone /opencv and checkout 3.0.0
# git clone /opencv_contrib and checkout 3.0.0

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install build-essential cmake git pkg-config libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libatlas-base-dev gfortran python2.7-dev python-matplotlib

rm -rm get-pip.py
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

sudo pip install numpy
sudo pip install scipy
sudo pip install mutils


cd /opencv
mkdir build
cd build
# cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D BUILD_EXAMPLES=ON ..
cmake -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT ..

make
sudo make install
sudo ldconfig
