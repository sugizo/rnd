FROM alpine:latest

#LABEL stifix

RUN apk add --no-cache python py-pip py-setuptools unzip wget openssl && \
 pip install --upgrade pip && \
 pip install virtualenv && \
 wget -c http://web2py.com/examples/static/web2py_src.zip && \
 unzip -o web2py_src.zip && \
 rm -rf /web2py/applications/examples && \
 cd /web2py && \
 openssl genrsa 1024 > web2py.key && chmod 400 web2py.key && \
 openssl req -new -x509 -nodes -sha1 -days 1780 -subj '/C=ID/ST=Jakarta/L=Jakarta/O=stifix/OU=IT/CN=stifix.com' -key web2py.key > web2py.crt && \
 openssl x509 -noout -fingerprint -text < web2py.crt > web2py.info && \
 cp -r /web2py/applications/welcome /web2py/applications/init && \
 chmod 755 -R /web2py

COPY . /web2py/applications/init/

RUN pip install -r /web2py/applications/init/requirements.txt

EXPOSE 443

WORKDIR /web2py

CMD python /web2py/web2py.py --nogui --no-banner -a 'a' -c web2py.crt -k web2py.key -i 0.0.0.0 -p 443
