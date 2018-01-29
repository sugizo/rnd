#!/bin/sh

# clear
clear

# Download Package
cd ~/Downloads
curl -L -O -C - http://mirrors.jenkins.io/war-stable/latest/jenkins.war

# sync data
rm -rf ~/.jenkins/jobs/*
rsync -avuzr ~/Cloud/MEGA/Git/jenkins/jobs/* ~/.jenkins/jobs/

# clear caches
rm -rf ~/.jenkins/caches/*

# clear log
rm -rf ~/.jenkins/logs/*

# clear workspace
rm -rf ~/.jenkins/workspace/*

# Start Application
cd ~/Downloads
java -jar jenkins.war

#http://localhost:8080

# Check Password Jenkins
cat ~/.jenkins/secrets/initialAdminPassword

#http://localhost:8080/reload

echo 'Done'
