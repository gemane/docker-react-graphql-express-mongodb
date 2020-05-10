#!/bin/bash
echo "Stop Docker..." && \
if $(docker ps | grep -q -i up); then 
    docker stop web-app;
    docker stop api;
    docker stop mongodb; 
fi && \
echo "Remove Container..." && \
if $(docker ps | grep -q -i Exited); then docker rm -f $(docker ps -q); fi && \
echo "Remove Images..." && \
if $(docker images -a | grep "ago" ); then docker image prune -af; fi && \
echo "Clean up orphaned volumes" && \
if $(docker volume ls -qf dangling=true | grep "\."); then docker volume rm $(docker volume ls -qf dangling=true); fi && \
echo "Clean up orphaned networks" && \
if $(docker network ls -q | grep "\."); then docker network rm $(docker network ls -q); fi && \

echo "Start Docker Compose ..." && \
docker-compose up -d
