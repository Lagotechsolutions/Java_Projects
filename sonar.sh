#!/bin/bash
# Enable Password Authentication for sonar user
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
sudo service sshd restart
sleep 3
cd /opt
#Install Java for SonaQube to run
sudo yum install unzip wget git-all -y
sleep 3
sudo yum install  java -y
sleep 5
#Download and extract SonarQube
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.8.zip
sleep 5
sudo unzip sonarqube-7.8.zip
sleep 5
sudo rm -rf sonarqube-7.8.zip
sudo mv sonarqube-7.8 sonarqube
#Grant file permissions to sonarqube folder for sonar user
sudo chown -R sonar:sonar /opt/sonarqube/
sudo chmod -R 775 /opt/sonarqube/
#Start Sonarqube
sh /opt/sonarqube/bin/linux-x86-64/sonar.sh start 
sh /opt/sonarqube/bin/linux-x86-64/sonar.sh status
#set hostname for sonarqube server
sudo hostnamectl set-hostname sonar 
# Create a sonar user
sudo useradd sonar
# Grant sudo access to sonar user
sudo echo "sonar ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/sonar
# set hostname for the sonarqube server
sudo su - sonar
# Create a password for sonar user
sudo passwd sonar
