#!/bin/bash
# Author : Prayag Sangode
# Install Jenkins

sudo yum search java-*-openjdk
sudo yum -y install java-11-openjdk.x86_64
java -version

sudo yum -y install wget
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y
sudo systemctl status jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

sudo firewall-cmd --list-all 
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --permanent --zone=trusted --add-port=8080/tcp
sudo firewall-cmd --reload
sudo firewall-cmd --list-all


