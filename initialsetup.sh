#! /bin/bash

clear

#updates OS
#sudo apt-get update -y && sudo apt-get upgrade -y

#*LAMP STACK
#sudo yum install httpd -y
#sudo systemctl start httpd.service 
#sudo systemctl enable httpd.service
#sudo yum install mariadb-server mariadb -y
#sudo systemctl start mariadb 
#sudo mysql_secure_installation -y
#sudo systemctl enable mariadb.service
#sudo yum install php php-mysql -y
#sudo systemctl restart httpd.service


#*GOOGLE CHROME INSTALL*

#Creates destination for google chrome repo
echo >> /etc/yum.repos.d/google-chrome.repo "[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/$basesearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub"


#Installs google chrome
yum install google-chrome-stable -y

#Allows auto download of latest chrome browser
#wget http://chrome.richardlloyd.org.uk/install_chrome.sh

#Changes above shell file to be executed
#chmod u+x install_chrome.sh

#Installs the chrome shell
#./install_chrome.sh


#*Install Vim
#sudo yum install vim-enhanced.x86_64 -y

#*Sublime Text*
#Installs Vim
#sudo add-yum-repository ppa:webupd8team/sublime-text-3
#sudo yum update -y
#sudo yum install sublime-text-installer

