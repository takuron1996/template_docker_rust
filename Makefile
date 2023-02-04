SHELL = /bin/bash
CONTAINER_NAME = app
APPLICATION = application
DOCKER = docker exec $(CONTAINER_NAME)

prepare: build	up

run: format
	$(DOCKER) cargo run

test: format
	$(DOCKER) cargo test

sh:
	docker exec -it $(CONTAINER_NAME) /bin/sh

up:
	docker-compose up -d

build:
	docker-compose build

down:
	docker-compose down

lint: format
	$(DOCKER) cargo clippy

format:
	$(DOCKER) cargo fmt

