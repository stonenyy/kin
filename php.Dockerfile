FROM php:7.4-fpm-alpine

RUN apk update && apk add bash
RUN set -ex \
    && apk --no-cache add \
    mysql-dev
RUN docker-php-ext-install pdo sqlite3 pdo_sqlite
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

WORKDIR /var/www/html

# RUN composer update --no-scripts
RUN chown -R www-data:www-data /var/www/