#!/bin/bash
sudo su
yum install git -y
yum install java-1.8.0-openjdk -y
yum install maven -y
sudo yum update -y
echo 'export SPRING_DATASOURCE_URL="**********' >> /etc/environment
echo 'export SPRING_DATASOURCE_USERNAME="admin"' >> /etc/environment
echo 'export SPRING_DATASOURCE_PASSWORD="*********"' >> /etc/environment

export SPRING_DATASOURCE_URL="********"
export SPRING_DATASOURCE_USERNAME="admin"
export SPRING_DATASOURCE_PASSWORD="*********"

cd /home/ec2-user
git clone https://github.com/sayanastha39/Borrower.git
cd /home/ec2-user/Borrower/LMSBorrowerTry
sudo mvn clean install
nohup java -jar target/LMSBorrower-0.0.1-SNAPSHOT.jar &