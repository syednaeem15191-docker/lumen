FROM php:8.1-apache

ARG MEMORY_LIMIT=1G
ARG POST_MAX_SIZE=128M
ARG UPLOAD_MAX_FILESIZE=64M
ARG MAX_EXECUTION_TIME=300

ENV MEMORY_LIMIT=$MEMORY_LIMIT
ENV POST_MAX_SIZE=$POST_MAX_SIZE
ENV UPLOAD_MAX_FILESIZE=$UPLOAD_MAX_FILESIZE
ENV MAX_EXECUTION_TIME=$MAX_EXECUTION_TIME

WORKDIR /var/www/project

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt-get update && apt-get install -y openssl zip libzip-dev supervisor cron

RUN docker-php-ext-install zip pdo_mysql

RUN a2enmod rewrite && service apache2 restart

COPY apache.conf /etc/apache2/sites-available/000-default.conf

COPY supervisor.conf /etc/supervisor/conf.d/supervisor.conf

COPY crontab /etc/crontab

COPY entrypoint.sh /var/www/entrypoint.sh

ENTRYPOINT ["sh", "/var/www/entrypoint.sh"]
