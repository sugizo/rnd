FROM httpd:2.4

#LABEL stifix

COPY . /usr/local/apache2/htdocs/

EXPOSE 80
