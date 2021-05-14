FROM alpine:latest

ADD https://github.com/just-containers/s6-overlay/releases/latest/download/s6-overlay-amd64.tar.gz /tmp/s6overlay.tar.gz

RUN apk -U upgrade && apk add --no-cache \
    nginx \
    php8 \
    php8-curl \
    php8-dom \
    php8-fileinfo \
    php8-fpm \
    php8-gd \
    php8-iconv \
    php8-intl \
    php8-mbstring \
    php8-opcache \
    php8-pdo \
    php8-pdo_mysql \
    php8-phar \
    php8-session \
    php8-simplexml \
    php8-tokenizer \
    php8-xml \
    php8-zip \
    && ln -s /usr/bin/php8 /usr/bin/php \
    && addgroup -S php \
    && adduser -S -G php php \
    && tar xzf /tmp/s6overlay.tar.gz -C / \
    && rm -rf /var/cache/apk/* /tmp/s6overlay.tar.gz \
    && mkdir -p /run/nginx

ADD files/crontab crontab
COPY files/etc /etc

RUN crontab crontab && rm crontab

EXPOSE 80

WORKDIR /app

ENTRYPOINT ["/init"]
