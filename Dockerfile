FROM php:7.3.28-cli-buster

WORKDIR /app

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

COPY . /app

CMD php -S 0.0.0.0:88 -t admin/public