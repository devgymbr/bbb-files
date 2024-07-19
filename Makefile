run: stop
	docker-compose up --build --force-recreate

stop:
	docker-compose down