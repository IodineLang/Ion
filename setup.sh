#!/bin/bash

if [ $(id -u) = 0 ]; then
   echo "Do not run this script as root. Aborting..."
   exit 1
fi
sudo cp -r . /usr/lib/iodine-ion/
mkdir ~/.iodinepackages
sudo cp -r ./ion_exec.sh /usr/bin/ion
sudo chmod a+x /usr/bin/ion
sudo rm /etc/profile.d/ion.sh
echo -n "export IODINE_PATH=" | sudo tee /etc/profile.d/ion.sh
echo ~/.iodinepackages | sudo tee -a /etc/profile.d/ion.sh
