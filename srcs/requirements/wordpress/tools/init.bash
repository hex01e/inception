#!/bin/bash

echo Starting wordpress...
until mysqladmin -u$DB_USERNAME -h$DB_HOSTNAME -p$DB_PASSWORD ping 2>/dev/null
do 
    :
done

mkdir -p /var/www/wordpress
cd /var/www/wordpress

wp core download --allow-root
wp config create --dbname=$DB_NAME\
                 --dbuser=$DB_USERNAME\
                 --dbpass=$DB_PASSWORD\
                 --dbhost=$DB_HOSTNAME --allow-root

wp config set FS_METHOD direct --allow-root
wp config set WP_REDIS_HOST redis --allow-root
wp config set WP_REDIS_PORT 6380 --allow-root
wp config set WP_CACHE true --raw  --allow-root

wp db create --allow-root
wp core install --url=$WP_URL \
                --title=$WP_TITLE \
                --admin_user=$WP_ADMIN_USER \
                --admin_password=$WP_ADMIN_PASS \
                --admin_email=$WP_ADMIN_EMAIL --allow-root
wp user create $WP_USER  $WP_EMAIL --user_pass=$WP_PASS --role=author --allow-root

wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root

exec php-fpm7.4 -F