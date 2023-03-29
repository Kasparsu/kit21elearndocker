FROM httpd:2.4

RUN apt-get update && apt-get install nano -y

ADD httpd.conf /usr/local/apache2/conf/httpd.conf

ADD .htpasswd /usr/local/apache2/.htpasswd

#RUN a2enmod rewrite