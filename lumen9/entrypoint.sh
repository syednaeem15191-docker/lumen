#!/bin/bash
supervisord
service cron start
docker-php-entrypoint apache2-foreground
