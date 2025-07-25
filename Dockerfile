FROM php:8.2-apache

LABEL org.opencontainers.image.title="Applicatif PHP"
LABEL org.opencontainers.image.version="1.0"
LABEL org.opencontainers.image.authors="LABBE Noe <nlabbe@myges.fr>"

RUN docker-php-ext-install pdo pdo_mysql && docker-php-source delete


COPY index.php /var/www/html/


RUN chown -R www-data:www-data /var/www/html

RUN a2enmod rewrite
