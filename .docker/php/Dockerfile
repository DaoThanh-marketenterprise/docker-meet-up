FROM php:8.1-fpm

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install extensions
RUN docker-php-ext-install pdo_mysql exif pcntl

COPY ./wait-for /bin/wait-for

RUN chmod +x /bin/wait-for

CMD ["php-fpm"]