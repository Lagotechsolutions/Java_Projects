#!/bin/bash
#Install Nginx
sudo yum install nginx -y
#Enable the nginx service
sudo systemctl enable nginx
#Start the nginx service
sudo systemctl start nginx
#Check the nginx service status
sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bkp
sudo mv /home/ec2-user/Java_Projects/nginx.conf /etc/nginx/nginx.conf
#Reload the nginx service
sudo nginx -s reload
#Restart the nginx service
sudo systemctl restart nginx
#Change hostname to NGINX
sudo hostnamectl set-hostname NGINX
exit
