build:
	docker compose build

up:
	docker compose up

publish:
	curl -X POST -H "Content-Type: application/json" -d '{"message": "Hello, Pub/Sub!"}' http://localhost:8080/publish