From php:7.3.22-apache-stretch

RUN apt-get update

RUN apt-get install -y vim zip unzip zlib1g-dev libzip-dev

RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN docker-php-ext-install pdo pdo_mysql

RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev

RUN docker-php-ext-configure gd

RUN docker-php-ext-install gd

RUN a2enmod headers

RUN a2enmod rewrite

RUN service apache2 start

EXPOSE 80




