FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install adminer nginx php7.4-fpm -y
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
COPY ./conf/wp.conf /etc/nginx/sites-available/default
COPY ./tools/init.bash /root/init.bash
RUN chmod +x /root/init.bash
CMD ["/root/init.bash"]