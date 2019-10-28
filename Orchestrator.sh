#!/bin/bash
sudo su
yum install git -y
yum install java-1.8.0-openjdk -y
yum install maven -y
sudo yum update -y

echo 'export SPRING_DATASOURCE_URL="jdbc:mysql://lms.cv2mc6y2qhct.us-east-2.rds.amazonaws.com:3306/users?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"' >> /etc/environment
echo 'export SPRING_DATASOURCE_USERNAME="admin"' >> /etc/environment
echo 'export SPRING_DATASOURCE_PASSWORD="teamflash123"' >> /etc/environment

export SPRING_DATASOURCE_URL="jdbc:mysql://lms.cv2mc6y2qhct.us-east-2.rds.amazonaws.com:3306/users?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
export SPRING_DATASOURCE_USERNAME="admin"
export SPRING_DATASOURCE_PASSWORD="teamflash123"

cd /home/ec2-user
git clone https://github.com/jobysanthosh/LMSOrchestrator.git

cd /home/ec2-user/LMSOrchestrator/LMSOrchestrator
sudo mvn clean install
nohup java -jar target/LMSOrchestrator-0.0.1-SNAPSHOT.jar &