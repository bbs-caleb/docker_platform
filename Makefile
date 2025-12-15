SHELL := /bin/bash

.PHONY: help build-base run-base run-nginx up-web-stack down-web-stack clean

help:
	@echo "make build-base | run-base | run-nginx | up-web-stack | down-web-stack | clean"

build-base:
	docker build -t docker-lab/base ./infrastructure/base/hello_container

run-base:
	docker run --rm docker-lab/base

run-nginx:
	docker build -t docker-lab/nginx-static ./infrastructure/web_app/nginx_static_site
	docker run --rm -p 8080:80 docker-lab/nginx-static

up-web-stack:
	cd infrastructure/compose/web_stack && docker compose up --build -d

down-web-stack:
	cd infrastructure/compose/web_stack && docker compose down

clean:
	find . -name '__pycache__' -type d -prune -exec rm -rf {} +
