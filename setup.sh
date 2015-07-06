sudo cp -r . /usr/lib/iodine-ion/
mkdir ~/.iodinepackages
export IODINE_PATH=$IODINE_PATH:~/.iodinepackages
sudo cp -r ./ion_exec.sh /usr/bin/ion
sudo chmod a+x /usr/bin/ion
