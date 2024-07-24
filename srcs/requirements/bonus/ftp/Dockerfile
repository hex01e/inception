FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install vsftpd -y
COPY ./tools/init.bash /root/init.bash
RUN chmod +x /root/init.bash
CMD ["/root/init.bash"]