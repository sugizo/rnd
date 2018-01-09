FROM httpd:latest

#LABEL stifix

COPY . /usr/local/apache2/htdocs/

EXPOSE 80
