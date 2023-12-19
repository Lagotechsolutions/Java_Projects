#!/bin/bash
cd /opt
#install utility tools
sudo yum install wget tree unzip git-all -y
sleep 3
sudo yum install java -y
sleep 3
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.84/bin/apache-tomcat-9.0.84.zip
sleep 3
sudo unzip apache-tomcat-9.0.84.zip
sleep 3
sudo rm -rf aapache-tomcat-9.0.84.zip
### rename tomcat for good naming convention
sudo mv apache-tomcat-9.0.84 tomcat9
### assign executable permissions to the tomcat home directory
sudo chmod 777 -R /opt/tomcat9
sudo chown ec2-user -R /opt/tomcat9
### start tomcat
sh /opt/tomcat9/bin/startup.sh
# create a soft link to start and stop tomcat
# This will enable us to manage tomcat as a service
sudo ln -s /opt/tomcat9/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat9/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat
sudo su - ec2-user
