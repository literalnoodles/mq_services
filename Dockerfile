FROM php:7.3.28-cli-buster

WORKDIR /app

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

COPY . /app

COPY php.ini /usr/local/etc/php/php.ini

RUN apt-get update && apt-get install -y libpq-dev git unzip

RUN docker-php-ext-install pgsql pdo pdo_pgsql

CMD php -S 0.0.0.0:88 -t admin/public