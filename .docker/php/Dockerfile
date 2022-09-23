FROM php:8.1-fpm-alpine

# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Install extensions
RUN docker-php-ext-install pdo_mysql

COPY ./wait-for /bin/wait-for

RUN chmod +x /bin/wait-for

CMD ["php-fpm"]