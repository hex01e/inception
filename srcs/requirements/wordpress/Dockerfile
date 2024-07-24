FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y
RUN apt install php7.4-fpm  php7.4-mysqli mariadb-client curl -y
RUN mkdir -p /run/php
RUN echo "listen=0.0.0.0:9000" >> /etc/php/7.4/fpm/php-fpm.conf
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY tools/init.bash /root/init.bash
WORKDIR /var/www/wordpress

CMD ["/root/init.bash"]