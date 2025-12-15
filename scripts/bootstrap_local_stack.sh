#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

docker build -t docker-lab/base ./infrastructure/base/hello_container
docker build -t docker-lab/nginx-static ./infrastructure/web_app/nginx_static_site

cd infrastructure/compose/web_stack
docker compose up --build -d
