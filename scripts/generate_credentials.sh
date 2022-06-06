#!/bin/bash

if test -f .env; then
    echo ".env file already exists"
    exit 1
fi

echo "DOCKER_INFLUXDB_INIT_PASSWORD=$(openssl rand 12 | openssl enc -A -base64)" >> .env
echo "DOCKER_INFLUXDB_INIT_ADMIN_TOKEN=$(openssl rand 88 | openssl enc -A -base64)" >> .env
echo "MYSQL_PASSWORD=$(openssl rand 12 | openssl enc -A -base64)" >> .env
echo "MYSQL_ROOT_PASSWORD=$(openssl rand 12 | openssl enc -A -base64)" >> .env

MQTT_PASSWORD=$(openssl rand 12 | openssl enc -A -base64)
echo "MQTT_PASSWORD=$MQTT_PASSWORD" >> .env

docker run -it eclipse-mosquitto:2.0.14 mosquitto_passwd -b -c /dev/stdout mqtt ${MQTT_PASSWORD} > .mosquitto.pwd
