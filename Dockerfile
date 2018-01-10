FROM jenkins/jenkins:lts

#LABEL stifix

COPY . /var/jenkins_home/

EXPOSE 8080
