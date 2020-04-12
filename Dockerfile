From php:7.2.14-apache-stretch

RUN apt-get update

RUN apt-get install -y vim zip unzip zlib1g-dev

RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN a2enmod headers

RUN a2enmod rewrite

RUN service apache2 start

EXPOSE 80




