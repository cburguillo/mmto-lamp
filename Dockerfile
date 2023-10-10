#FROM php:8-apache
FROM php:apache-bullseye

LABEL maintainer Carlos Burguillo cburguillo@mmto.org

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
RUN docker-php-ext-install mysqli
RUN pecl install redis && docker-php-ext-enable redis

EXPOSE 80
