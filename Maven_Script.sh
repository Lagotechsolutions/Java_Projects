#!/bin/bash
sudo hostnamectl set-hostname maven
sudo su - ec2-user
cd /opt
sudo yum install wget tree unzip git-all -y
sudo yum install java -y
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.zip
sudo unzip apache-maven-3.9.5-bin.zip
sudo rm -rf apache-maven-3.9.5-bin.zip
sudo mv apache-maven-3.9.5/ maven
cd /home/ec2-user
sudo echo "export PATH=$PATH:/opt/maven/bin" >> ~/.bash_profile
sudo source ~/.bash_profile
git clone https://github.com/Lagotechsolutions/Java_Projects.git
cd Java_Projects
mvn clean package