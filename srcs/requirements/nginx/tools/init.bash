#!/bin/bash
echo Starting nginx...
until nc -vz $PHP_HOSTNAME $PHP_PORT 2>/dev/null
do
    :
done

mkdir -p /var/www/wordpress
exec nginx