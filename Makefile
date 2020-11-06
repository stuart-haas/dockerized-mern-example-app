start-dev:
	docker-compose up --build --remove-orphans

build-dev:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up --build --remove-orphans

build-prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml build

login-server:
	docker exec -it server sh

login-database:
	docker exec -it database mongo

login-redis: 
	docker exec -it redis redis-cli