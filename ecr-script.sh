#!/bin/bash
sudo yum update -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
# creating docker image
printf "FROM ubuntu:18.04\nRUN apt-get update && \\ \n apt-get -y install apache2\nRUN echo 'Hello-World' > /var/www/html/index.html\nRUN echo '. /etc/apache2/envvars' > /root/run_apache.sh && \\ \n echo 'mkdir -p /var/run/apache2' >> /root/run_apache.sh && \\ \n echo 'mkdir -p /var/lock/apache2' >> /root/run_apache.sh && \\ \n echo '/usr/sbin/apache2 -D FOREGROUND' >> /root/run_apache.sh && \\ \n chmod 755 /root/run_apache.sh\nEXPOSE 80 \nCMD /root/run_apache.sh" > Dockerfile
sudo docker build -t website-image2 .
docker tag website-image2 772086023877.dkr.ecr.us-east-1.amazonaws.com/docker-ec2 
docker login -u AWS -p $(aws ecr get-login-password --region us-east-1) 772086023877.dkr.ecr.us-east-1.amazonaws.com/docker-ec2
docker push 772086023877.dkr.ecr.us-east-1.amazonaws.com/docker-ec2:latest
sudo docker run -t -i -p 80:80 website-image2

aws ecr create-repository --repository-name docker-ec2 --region us-east-1