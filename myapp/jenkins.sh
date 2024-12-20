#!/bin/bash


sudo apt update

sudo apt install fontconfig openjdk-17-jre

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian/jenkins.io-2023.key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "Installing Jenkins and dependencies..."
echo "123" | sudo -S apt-get update -y
echo "123" | sudo -S apt-get install -y jenkins

sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins

sudo usermod -aG docker jenkins