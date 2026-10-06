#!/bin/bash
cd "$(dirname "$0")"

git pull

docker compose -f utils-docker-compose.yml pull
docker compose -f media-docker-compose.yml pull

docker compose -f utils-docker-compose.yml up -d
docker compose -f media-docker-compose.yml up -d

docker image prune -f
