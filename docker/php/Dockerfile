FROM php:7.4.3-fpm-alpine3.11

# Copy the php config file
COPY ./docker/php/php-fpm.conf /usr/local/etc/php-fpm.d/www.conf

# Install php ext
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && docker-php-ext-install pdo && docker-php-ext-enable pdo && docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql 

# Copy the application code
COPY . /app

VOLUME ["/app"]
