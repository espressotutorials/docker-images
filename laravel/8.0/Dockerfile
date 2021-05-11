FROM alpine:latest

ADD https://github.com/just-containers/s6-overlay/releases/latest/download/s6-overlay-amd64.tar.gz /tmp/s6overlay.tar.gz

RUN apk -U upgrade && apk add --no-cache \
    nginx \
    php8 \
    php8-fpm \
    php8-session \
    php8-xml \
    php8-pdo \
    php8-pdo_mysql \
    php8-intl \
    php8-zip \
    php8-dom \
    php8-gd \
    && addgroup -S php \
    && adduser -S -G php php \
    && rm -rf /var/cache/apk/* \
    && tar xzf /tmp/s6overlay.tar.gz -C / \
    && rm /tmp/s6overlay.tar.gz \
    && mkdir -p /run/nginx

ADD files/crontab crontab
COPY files/etc /etc

RUN crontab crontab && rm crontab

EXPOSE 80

WORKDIR /var/www/html

ENTRYPOINT ["/init"]
