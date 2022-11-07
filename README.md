# Docker, PHP 8.1, Laravel 9

An empty Laravel 9 project using PHP 8.1 and Docker Compose

## Quick Start
```shell
git clone https://github.com/acsl9r/docker-laravel9-php8.1.git
sh bin/init.sh
```

### Starting the docker containers
```shell
sh bin/start.sh
```

### Stopping the docker containers
```shell
sh bin/stop.sh
```

Load https://localhost/ in your browser! (accept any pesky browser SSL warnings for local dev)

## Laravel
Laravel version 9.x should now be installed along with the debug bar.

## PHP
PHP version 8.1 should be installed. Try running `docker-compose run --rm php -v` to see. XDebug should
also be enabled (have your IDE listen on port `9003`).

## MySQL / MariaDB
MySQL / MariaDB should now be listening on port `3306`. The hostname would be `db` and the root password is
`secret` (or whatever you set `DB_ROOT_PASSWORD` to in your `.env` file).

## Caddy / Nginx
By default this project uses Caddy instead of Nginx, but Nginx configs are included in case you want to use it.

## PHPMyAdmin
PHPMyAdmin should be available at: http://localhost:8081/
