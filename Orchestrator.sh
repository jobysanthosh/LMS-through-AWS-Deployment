#!/bin/bash
sudo su
yum install git -y
yum install java-1.8.0-openjdk -y
yum install maven -y
sudo yum update -y

echo 'export SPRING_DATASOURCE_URL="***********
echo 'export SPRING_DATASOURCE_USERNAME="admin"' >> /etc/environment
echo 'export SPRING_DATASOURCE_PASSWORD="**********S"' >> /etc/environment

export SPRING_DATASOURCE_URL="*************"
export SPRING_DATASOURCE_USERNAME="admin"
export SPRING_DATASOURCE_PASSWORD="******"

cd /home/ec2-user
git clone https://github.com/jobysanthosh/LMSOrchestrator.git

cd /home/ec2-user/LMSOrchestrator/LMSOrchestrator
sudo mvn clean install
nohup java -jar target/LMSOrchestrator-0.0.1-SNAPSHOT.jar &