#!/bin/bash
wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm rpm -ivh epel-release-6-8.noarch.rpm
yum groupinstall "Xfce" "Desktop" -y
yum install -y nano unzip xkill firefox tigervnc-server xorg-x11-server-Xorg gdm xorg-x11-fonts-* libXtst-devel-*
vncserver && vncserver -kill :1
sed -i 's/twm/startxfce4/g' ~/.vnc/xstartup
vncserver
clear
rm -rf *.rpm
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.rpm"

rpm -i jdk-8u40-linux-x64.rpm
cd Desktop
wget https://tribot.org/bin/TRiBot_Loader.jar
