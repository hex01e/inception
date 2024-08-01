FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install redis -y

CMD ["redis-server", "--protected-mode", "no" ,"--daemonize", "no", "--port", "6380"]