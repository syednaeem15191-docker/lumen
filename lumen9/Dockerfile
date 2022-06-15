FROM php:8-apache

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
