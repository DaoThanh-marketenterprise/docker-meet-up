#!/bin/sh

composer install

echo "Waiting MYSQL server"

wait-for  mysql-database:3306 -- echo "MYSQL server already"

php artisan migrate

php-fpm