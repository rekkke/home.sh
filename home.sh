#!/bin/bash
yum install wget -y
rpm -ivh http://mirror.facebook.net/fedora/epel/6/x86_64/epel-release-6-7.noarch.rpm
wget http://javadl.sun.com/webapps/download/AutoDL?BundleId=68233 -O java.rpm
rpm -Uvh java.rpm
yum groupinstall "Xfce" "Desktop" -y
yum install -y nano unzip xkill firefox tigervnc-server xorg-x11-server-Xorg gdm xorg-x11-fonts-* libXtst-devel-*
rm -rf *.rpm
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm"

rpm -i jdk-8u45-linux-x64.rpm
cd Desktop
wget https://tribot.org/bin/TRiBot_Loader.jar
adduser rekke
passwd rekke
vncserver && vncserver -kill :1
sed -i 's/twm/startxfce4/g' ~/.vnc/xstartup
vncserver
