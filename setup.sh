if [ $(id -u) = 0 ]; then
   echo "Do not run this script as root. Aborting..."
   exit 1
fi
sudo cp -r . /usr/lib/iodine-ion/
mkdir ~/.iodinepackages
#sudo cp ./ion_env.sh /etc/profile.d/ion.sh
sudo cp -r ./ion_exec.sh /usr/bin/ion
sudo chmod a+x /usr/bin/ion
ion add-repo Default http://iodinelang.github.io/Ion-Default-Repo
