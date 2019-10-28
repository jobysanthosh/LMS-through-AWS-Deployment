# Janet Fernando
# Admin User Data for AWS and LB 

#!/bin/bash

sudo yum install git -y
sudo yum install java-1.8.0-openjdk -y
sudo yum install maven -y

echo 'export SPRING_DATASOURCE_URL="*******"' >> /etc/environment
echo 'export SPRING_DATASOURCE_PASSWORD="*********"' >> /etc/environment
echo 'export SPRING_DATASOURCE_USERNAME="admin"' >> /etc/environment

export SPRING_DATASOURCE_URL="********"
export SPRING_DATASOURCE_USERNAME="admin"
export SPRING_DATASOURCE_PASSWORD="*******"

cd /home/ec2-user
git clone https://github.com/janfernandosmoothstack/AdminWk4.git
cd /home/ec2-user/AdminWk4/AdminWk4

sudo mvn clean install
nohup java -jar target/LMSAdmin-0.0.1-SNAPSHOT.jar &