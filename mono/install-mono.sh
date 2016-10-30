#!/bin/bash
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list

apt-get update

echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | tee -a /etc/apt/sources.list.d/mono-xamarin.list

apt-get install mono-devel
apt-get install mono-complete
apt-get install referenceassemblies-pcl
apt-get install ca-certificates-mono

while true; do
    read -p "Do you wish to install ASP.NET support? [y/n]" yn
    case $yn in
        [Yy]* ) apt-get install mono-xsp4; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
