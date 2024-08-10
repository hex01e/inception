FILE = ./srcs/docker-compose.yml
all: 
	@mkdir -p /home/houmanso/data/mysql /home/houmanso/data/wordpress
	docker-compose --file ./srcs/docker-compose.yml up --build
up:
	@mkdir -p /home/houmanso/data/mysql /home/houmanso/data/wordpress
	docker-compose --file ./srcs/docker-compose.yml up -d

down:
	docker-compose --file ./srcs/docker-compose.yml down
clean:
	docker image rm -f `docker image ls -a -q` 2>/dev/null || true
	docker container rm -f `docker container ls -a -q` 2>/dev/null|| true
	docker volume rm mysql wordpress 2>/dev/null || true
	docker network rm net 2>/dev/null || true
fclean:clean
	rm -rf /home/houmanso/data/mysql/* /home/houmanso/data/wordpress/*

re: down all