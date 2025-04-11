DOCKER_COMPOSE = ./srcs/docker-compose.yml
VOLUMES=$$(docker volume ls -q)

compose:
	@mkdir -p /home/diodos-s/data/mariadb /home/diodos-s/data/wordpress

	@docker compose -f ${DOCKER_COMPOSE} up --build
down:
	@docker compose -f ${DOCKER_COMPOSE} down

stop: down
	@docker compose -f ${DOCKER_COMPOSE} stop
	

clean: down
	@docker volume rm ${VOLUMES}


clean_all: down
	@docker volume rm ${VOLUMES}
	@docker system prune -a
	@sudo rm -rf /home/diodos-s/data

re: clean compose
