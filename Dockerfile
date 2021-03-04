FROM php:7.4-apache
RUN a2enmod rewrite && a2enmod headers
COPY . /var/www/html/
RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql