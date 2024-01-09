#!/bin/bash

# Update package list and install dependencies
apt-get update
apt-get install -y \
  curl \
  python3

echo "INFO-----------------------"
echo "Python version"
python3 --version
echo "INFO-----------------------"

#Donwload yaml
sudo apt install python3-pip
sudo pip3 install PyYAML

# Download and install java8
sudo apt install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common -y
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
apt-get update
sudo apt install adoptopenjdk-8-hotspot -y

echo "INFO-----------------------"
echo "Java version"
java -version
echo "INFO-----------------------"

# Install and setup maven
wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
tar -xvf apache-maven-3.6.3-bin.tar.gz
sudo mv apache-maven-3.6.3 /opt/
M2_HOME='/opt/apache-maven-3.6.3'
PATH="$M2_HOME/bin:$PATH"
export PATH

echo "INFO-----------------------"
echo "Maven version"
mvn --version
echo "INFO-----------------------"

# Download and install nodejs
sudo apt-get install nodejs -y
echo "INFO-----------------------"
echo "Node version"
node --version
echo "INFO-----------------------"

# Download and install Google Chrome
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o google-chrome-stable_current_amd64.deb
sudo apt-get install -y ./google-chrome-stable_current_amd64.deb
sudo rm -f google-chrome-stable_current_amd64.deb

echo "INFO-----------------------"
echo "Dependency setup for runner complete"
echo "INFO-----------------------"


