#! /bin/bash

#Install script for debian 7 wheezy

if [ "$EUID" -ne 0 ]
  then echo "Please run under user 'root'."
  exit
fi
echo "Updating 'apt-get'..."
apt-get update


useradd -m matty; echo "Enter the password for user matty :"; passwd matty

echo "Installing packages..."
apt-get -y install apache2 python3 python-setuptools lib32gcc1 curl nano samba build-essential python-dev unzip dos2unix mailutils wget lib32z1 lib32stdc++6

echo "Installing ZeroMQ library..."
# we use '--without-libsodium' because I encounter many problems with trying to configure with it.
wget http://download.zeromq.org/zeromq-4.1.3.tar.gz; tar -xvzf zeromq-4.1.3.tar.gz; rm zeromq-4.1.3.tar.gz; cd zeromq*; ./configure --without-libsodium; make install; cd ..; rm -r zeromq*; easy_install pyzmq

echo "Adding user 'steam'..."
useradd -m steam; usermod -a -G sudo steam; chsh -s /bin/bash steam; echo "Enter the password to use for steam account:"; passwd steam

# you might not want to do this: (it's a security risk, but makes things more convienient)
echo "Adding user 'steam' to sudoers file, and appending NOPASSWD..."
echo "steam ALL = NOPASSWD: ALL" >> /etc/sudoers


apt-get install samba

echo "Stopping the Samba services..."
service smbd stop; service nmbd stop

#echo "Adding home directory sharing to Samba..."
#echo -e "\n[homes]\n    comment = Home Directories\n    browseable = yes\n    read only = no\n    writeable = yes\n    create mask = 0755\n    directory mask = 0755" >> /etc/samba/smb.conf

#echo "Adding 'www' directory sharing to Samba..."
##echo -e "\n[www]\n    comment = WWW Directory\n    path = /var/www\n    browseable = yes\n    read only = no\n    writeable = yes\n    create mask = 0755\n    directory mask = 0755" >> /etc/samba/smb.conf

echo "Starting the Samba services..."
service smbd start; service nmbd start

echo "Enter the password to use for user 'steam' in Samba:"
smbpasswd -a steam

echo "Installing Supervisor..."
#easy_install supervisor

apt-get install supervisor

# this is now done in the quakeconfig.sh script, no need to create a config we won't be using.
#echo "Configuring Supervisor..."
#echo_supervisord_conf > /etc/supervisord.conf
#echo -e "\n[program:quakelive]\ncommand=/home/steam/quakestart.sh %(process_num)s\nuser=steam\nprocess_name=qzeroded_%(process_num)s\nnumprocs=10\nautorestart=true" >> /etc/supervisord.conf

echo "Installing glibc6 for debian ... "

echo "deb http://ftp.debian.org/debian sid main" >> /etc/apt/sources.list
apt-get update
apt-get -t sid install libc6 libc6-dev libc6-dbg
echo "Please remember to hash out sid main from your sources list. /etc/apt/sources.list"


echo "..done..next exec install-steam-ql.sh under steam .."
exit