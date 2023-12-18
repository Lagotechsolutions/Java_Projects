Welcome to Lagotechsolutions Projects
This will folder will contain some java web archive projects. 
Here are the list of steps to do in other to get your project working. 

Step 1 - Launch an EC2 instance;
--- Amazon Linux AMI;
--- T2 micro instance;
--- Open Security groups for all incoming and outgoing traffic (ALL TCP);

Step 2 - Configure Maven Build Server;
Install Git;
--- yum install git;
Clone Java_Projects repo;
--- git clone https://github.com/Lagotechsolutions/Java_Projects.git;
Grant executable rights to the script
--- sudo chmod u+x maven_script.sh 
Execute script;
--- sh /home/ec2-user/Java_Projects/maven_script.sh;

Step 3 - Configure TomCat App Servers;
Install Git;
--- yum install git;
Clone Java_Projects repo;
--- git clone;
Run maven.sh script;
--- sh /home/ec2-user/Java_Projects/m1.sh;

Step 4 - Configure Nginx Server;

Step 5 - Configure Sonarqube Server;

Step 6 - Configure Nexus Artifactory Server;

Step 7 - Configure Jenkins Server;
