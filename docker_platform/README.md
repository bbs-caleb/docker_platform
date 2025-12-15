# docker-platform-lab

Production-style Docker/Compose lab repo: images, containers, volumes, networking, and multi-service stacks.

## Quick start

```bash
# base container
docker build -t docker-lab/base ./infrastructure/base/hello_container
docker run --rm docker-lab/base

# nginx static
docker build -t docker-lab/nginx-static ./infrastructure/web_app/nginx_static_site
docker run --rm -p 8080:80 docker-lab/nginx-static

# compose stack
cd infrastructure/compose/web_stack
docker compose up --build
```

## Repo layout

- docs/                        docs & notes
- infrastructure/
  - base/                      minimal images/containers
  - files_and_volumes/         bind mount vs volume examples
  - networking/                network examples
  - web_app/                   nginx static site image
  - compose/                   multi-service stacks
- scripts/                     helper scripts
- tests/                       placeholder tests
