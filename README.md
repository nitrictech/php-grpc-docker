# php-grpc-docker

Installing the grpc and protobuf PHP extensions with pecl is time consuming, this project builds and pushes a Docker Image with these steps completed, saving time on individual PHP function builds.

## Build and Tag

Useful for local testing.

```bash
# Using make
make

# Or, instead using Docker directly
docker build . -t  nitricimages/php8.0-grpc-ext
```