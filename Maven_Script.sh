#!/bin/bash
cd /opt
sudo yum install wget tree unzip git-all -y
sleep 3
sudo yum install java -y
sleep 3
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.zip
sleep 3
sudo unzip apache-maven-3.9.5-bin.zip
sleep 10
sudo rm -rf apache-maven-3.9.5-bin.zip
sudo mv apache-maven-3.9.5/ maven
cd /home/ec2-user
echo "export PATH=$PATH:/opt/maven/bin" >> ~/.bash_profile
source ~/.bash_profile
git clone https://github.com/Lagotechsolutions/Java_Projects.git
sleep 5
cd /home/ec2-user/Java_Projects/lagotech-web-app/
sleep 3
mvn clean package
sleep 5
sudo hostnamectl set-hostname maven
