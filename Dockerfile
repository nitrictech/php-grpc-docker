FROM php:8.0-alpine as build

RUN apk add linux-headers
RUN apk --no-cache add $PHPIZE_DEPS zip unzip git zlib-dev
RUN pecl install grpc
RUN pecl install protobuf

FROM php:8.0-alpine as grpc

RUN apk add --no-cache libstdc++
COPY --from=build /usr/local/lib/php/extensions/ /usr/local/lib/php/extensions/
RUN docker-php-ext-enable grpc
RUN docker-php-ext-enable protobuf