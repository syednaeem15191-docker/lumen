#!/bin/bash
echo 'ServerName localhost' >> /etc/apache2/apache2.conf
echo "memory_limit = ${MEMORY_LIMIT}" >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini;
echo "post_max_size = ${POST_MAX_SIZE}" >> /usr/local/etc/php/conf.d/docker-php-postmaxsize.ini;
echo "upload_max_filesize = ${UPLOAD_MAX_FILESIZE}" >> /usr/local/etc/php/conf.d/docker-php-uploadmaxfilesize.ini;
echo "max_execution_time = ${MAX_EXECUTION_TIME}" >> /usr/local/etc/php/conf.d/docker-php-maxexecutiontime.ini;
supervisord
service cron start
docker-php-entrypoint apache2-foreground
