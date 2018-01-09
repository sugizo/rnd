FROM httpd:latest
#FROM nginx:latest

#LABEL stifix

# httpd
COPY . /usr/local/apache2/htdocs/ 

# nginx
#COPY . /usr/share/nginx/html/ 

EXPOSE 80
