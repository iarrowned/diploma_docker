#!/bin/bash

docker-compose up --build -d
cd ./app/
cp .env.example .env
composer install --ignore-platform-reqs