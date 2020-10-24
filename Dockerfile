# composer dependencies
FROM composer:2.0 as vendor
COPY ./app/composer.json composer.json
COPY ./app/composer.lock composer.lock
RUN composer install --ignore-platform-reqs --no-interaction --prefer-dist

FROM craftcms/php-fpm:7.4

# switch to the root user to install mysql tools
USER root
RUN apk add --no-cache mysql-client
# RUN docker-php-ext-install sockets
USER www-data

# the user is `www-data`, so we copy the files using the user and group
COPY --from=vendor /usr/bin/composer /usr/bin/composer

RUN composer global --ignore-platform-reqs require hirak/prestissimo

COPY --chown=www-data:www-data --from=vendor /app/vendor/ /app/vendor/
COPY --chown=www-data:www-data . .