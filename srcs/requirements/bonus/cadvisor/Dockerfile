FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install wget -y
WORKDIR /root
RUN wget https://github.com/google/cadvisor/releases/download/v0.37.0/cadvisor
RUN chmod +x /root/cadvisor
CMD ["/root/cadvisor", "--port", "5555"]