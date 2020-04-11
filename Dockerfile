From php:7.2.14-apache-stretch

RUN a2enmod headers

RUN a2enmod rewrite

RUN service apache2 start

EXPOSE 80


