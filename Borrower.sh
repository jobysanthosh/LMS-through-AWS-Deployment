#!/bin/bash
sudo su
yum install git -y
yum install java-1.8.0-openjdk -y
yum install maven -y
sudo yum update -y
echo 'export SPRING_DATASOURCE_URL="jdbc:mysql://lms.*****.us-east-2.rds.amazonaws.com:3306/library?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"' >> /etc/environment
echo 'export SPRING_DATASOURCE_USERNAME="admin"' >> /etc/environment
echo 'export SPRING_DATASOURCE_PASSWORD="teamflash123"' >> /etc/environment

export SPRING_DATASOURCE_URL="jdbc:mysql://lms.*******.us-east-2.rds.amazonaws.com:3306/library?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
export SPRING_DATASOURCE_USERNAME="***"
export SPRING_DATASOURCE_PASSWORD="******"

cd /home/ec2-user
git clone https://github.com/sayanastha39/Borrower.git
cd /home/ec2-user/Borrower/LMSBorrowerTry
sudo mvn clean install
nohup java -jar target/LMSBorrower-0.0.1-SNAPSHOT.jar &
