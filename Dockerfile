FROM alpine:latest

#LABEL stifix

RUN apk add --no-cache jenkins 

COPY . /root/.jenkins/

EXPOSE 8080

CMD /usr/bin/java -jar /usr/share/webapps/jenkins/jenkins.war
