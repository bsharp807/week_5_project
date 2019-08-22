init:

	@docker-compose run --service-ports node

test:

	@npm test

up:

	@npm start

build:

	@npm i

start:

	@docker-compose up