#!/bin/sh

cp .env.example .env

docker-compose run --rm composer install
docker-compose run --rm npm install

docker-compose run --rm artisan key:generate
docker-compose run --rm artisan cache:clear
docker-compose run --rm artisan view:clear
docker-compose run --rm artisan route:clear
docker-compose run --rm artisan clear-compiled
docker-compose run --rm artisan config:cache
docker-compose run --rm artisan migrate:fresh --seed
docker-compose run --rm artisan storage:link
