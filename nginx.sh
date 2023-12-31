#!/bin/bash
#Install Java
sudo yum install java -y
#Install Nginx
sudo yum install nginx -y
#Enable the nginx service
sudo systemctl enable nginx
#Start the nginx service
sudo systemctl start nginx
#Check the nginx service status
sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bkp
sudo cp /home/ec2-user/Java_Projects/nginx.conf /etc/nginx/
#Reload the nginx service
sudo nginx -s reload
#Restart the nginx service
sudo systemctl restart nginx
#Change hostname to NGINX
sudo hostnamectl set-hostname NGINX
echo "`curl ifconfig.me`"
sleep 3
exit
