FROM regnerisch:php-8.0-fpm

LABEL maintainer="Jonas Regner"

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/conf.d/php.ini"

CMD ["php-fpm"]
