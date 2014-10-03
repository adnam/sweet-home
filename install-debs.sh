#!/bin/bash

if [ "$UID" -ne  0 ]; then
   echo "You are not a superuser - please run:"
   echo "sudo $0";
   exit 1;
fi

install_package()
{
    sudo apt-get -y install $1
}

# Update package lists
apt-get -y update

# Perform a system upgrade
apt-get -y upgrade

# Checkout homedir files
#mv ~/.bash_logout .bash_logout-bak
#mv .bash_profile .bash_profile-bak
#mv .bashrc .bashrc-bak
#mv .profile .profile-bak
#svn co --username adamh --password hayward62 --force http://svn.happy.cat/svn/home/trunk .
#cp $HOME/fonts/* /usr/share/fonts/truetype/
#fc-cache -f -v

# Basic packages
apt-get -y install language-pack-en \
	ubuntu-standard \
	make \
	build-essential \
	openssh-server

# Editors
apt-get -y install vim vim-gnome exuberant-ctags

# Misc
apt-get -y install snarf runit elinks-lite wget zip curl \
	ack-grep gcc gnome-session-fallback gnome-tweak-tool \
	ttf-mscorefonts-installer

# LAMP stack
apt-get -y install mysql-server php5-mysql apache2 \
	apache2.2-common apache2-mpm-prefork apache2-utils \
	libexpat1 ssl-cert php5-cli php-apc php-pear php5-mcrypt

# version control: bazar, git and mercurial
apt-get -y install subversion git-core bzr mercurial

# Python stuff
apt-get -y install python-pip python-virtualenv python-dev \
	python-twisted python-libxml2 python-pyopenssl python-mysqldb \
	python-pyxml python-setuptools python-cheetah python-mako \
	vim-python

# Java
apt-get -y install sun-java6-bin sun-java6-fonts sun-java6-jdk sun-java6-jre

# Restart Apache
/etc/init.d/apache2 restart

# Alias for ack-grep
ln -fs /usr/bin/ack-grep /usr/bin/ack

# SFTP server
apt-get -y install 

# Extra desktop stuff
#install_package firebug \
#                mozilla-livehttpheaders \
#                firefox-webdeveloper \
#                adblock-plus
#install_package virtualbox-ose
#install_package rhythmbox
#install_package pidgin


