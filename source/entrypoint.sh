#!/bin/sh

# composer install

echo "lalalalalalallalalalalalal Waiting MYSQL server"

wait-for laravel-mysql:3306 -- echo "ahjhjhjhjhjhjhjhjhjhjhjhjhj MYSQL server already"

php artisan migrate

php-fpm