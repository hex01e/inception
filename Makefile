FILE = ./srcs/docker-compose.yml
all: 
	@mkdir -p /home/houmanso/data/mysql /home/houmanso/data/wordpress
	docker-compose --file ./srcs/docker-compose.yml up --build
up:
	@mkdir -p /home/houmanso/data/mysql /home/houmanso/data/wordpress
	docker-compose --file ./srcs/docker-compose.yml up

down:
	docker-compose --file ./srcs/docker-compose.yml down
clean:
	 docker image rm -f `docker image ls -a` || true
	 docker container rm -f `docker container ls -a` || true
	docker volume rm mysql wordpress || true
	docker network rm net ||true
fclean:clean
	rm -rf /home/houmanso/data/mysql/* /home/houmanso/data/wordpress/*

re: down clean all