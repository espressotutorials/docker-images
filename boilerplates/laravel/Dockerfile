FROM jregner/laravel:8.0

COPY src/ /app

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN composer install --no-dev
