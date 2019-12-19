#! /bin/bash
docker build -t=postgres-multi-db ./vendor/docker-postgresql-multiple-databases
docker-compose up
