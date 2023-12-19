#!/bin/bash
cd /opt
sudo yum install wget tree unzip git-all -y
sleep 3
sudo yum install java -y
sleep 3
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.zip
sleep 3
sudo unzip apache-maven-3.9.5-bin.zip
sleep 3
sudo rm -rf apache-maven-3.9.5-bin.zip
sudo mv apache-maven-3.9.5/ maven
cd /home/ec2-user
sudo chown ec2-user:ec2-user /etc/profile
sudo chmod 775 /etc/profile
sudo echo "export PATH=$PATH:/opt/maven/bin" >> /etc/profile
source /etc/profile
cd /home/ec2-user/Java_Projects/lagotech-web-app/
mvn clean package
sleep 5
sudo sed -i '132r /home/ec2-user/Java_Projects/tomcat_server.xml' /opt/maven/conf/settings.xml
sleep 5
sudo scp -i /home/ec2-user/Java_Projects/Build_Server.pem /home/ec2-user/Java_Projects/lagotech-web-app/target/lagotech-web-app.war ec2-user@54.234.176.69:/opt/tomcat9/webapps
sudo hostnamectl set-hostname maven
exit

