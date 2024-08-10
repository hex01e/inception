#!/bin/bash
echo Starting mariadb...

service mariadb start
mysqladmin -u root password $DB_PASSWORD
mysql -e "rename user '$DB_USERNAME'@'localhost' to '$DB_USERNAME'@'%'" || true
service mariadb stop

exec mysqld_safe --port=3306 --bind-address=0.0.0.0