#!/usr/bin/env bashio

export MQTT_USERNAME=$(bashio::config 'mqtt_username')
export MQTT_PASSWORD=$(bashio::config 'mqtt_password')
export MQTT_HOST=$(bashio::config 'mqtt_host')
export MQTT_PORT=$(bashio::config 'mqtt_port')
export ROOT_TOPIC=$(bashio::config 'mqtt_root_topic')
export MQTT_NAME=$(bashio::config 'mqtt_name')
export CONFIG=$(bashio::config 'pyhqconfig')


mqtt_pyhydroquebec
