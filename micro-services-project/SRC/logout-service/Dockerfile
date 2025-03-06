FROM php:7.4-apache
RUN docker-php-ext-install mysqli
RUN pecl install redis && docker-php-ext-enable redis
COPY . /var/www/html/
RUN chmod -R 755 /var/www/html/
EXPOSE 80
COPY php.ini /usr/local/etc/php/