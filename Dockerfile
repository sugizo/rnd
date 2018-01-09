#FROM httpd:latest
FROM nginx

#LABEL stifix

#COPY . /usr/local/apache2/htdocs/ # httpd
COPY . /usr/share/nginx/html/ # nginx

EXPOSE 80
