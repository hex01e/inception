FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nginx  openssl netcat -y
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
COPY ./conf/wp.conf /etc/nginx/sites-available/default
COPY tools/init.bash /root/init.bash
RUN openssl req -x509 -nodes                     \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt       \
    -subj "/C=MA/UID=houmanso/CN=houmanso.42.fr/L=khouribga/O=1337" 
RUN chmod +x /root/init.bash

CMD ["/root/init.bash"]