#!/bin/bash
echo "export PATH=$PATH:/opt/maven/bin" >> ~/.bash_profile
source ~/.bash_profile
git clone https://github.com/Lagotechsolutions/Java_Projects.git
sleep 5
cd /home/ec2-user/Java_Projects/lagotech-web-app/
sleep 3
mvn clean package
sleep 5
sudo hostnamectl set-hostname maven
