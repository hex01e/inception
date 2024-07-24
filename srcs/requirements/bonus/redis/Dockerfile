FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install redis -y
# COPY ./tools/init.bash /root/init.bash
# RUN chmod +x /root/init.bash
CMD ["redis-server", "--protected-mode", "no" ,"--daemonize", "no", "--port", "6380"]