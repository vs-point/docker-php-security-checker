#!/usr/bin/env bash

docker image rm docker-php-security-checker:latest

docker build --no-cache -t vspoint/docker-php-security-checker:latest .
docker push vspoint/docker-php-security-checker:latest
