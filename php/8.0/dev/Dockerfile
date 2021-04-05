FROM jregner/php:8.0-fpm

LABEL maintainer="Jonas Regner"

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY ["./php.ini", "$PHP_INI_DIR/conf.d/php.ini"]

CMD ["php-fpm"]
