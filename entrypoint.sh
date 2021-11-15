#!/usr/bin/env bashio

export MQTT_USERNAME=$(bashio::config 'mqtt_username')
export MQTT_PASSWORD=$(bashio::config 'mqtt_password')
export MQTT_HOST=$(bashio::config 'mqtt_host')
export MQTT_PORT=$(bashio::config 'mqtt_port')
export CONFIG=$(bashio::config 'pyhqconfig')
export PYHQ_USER=$(bashio::config 'PYHQ_USER')
export PYHQ_PASSWORD=$(bashio::config 'PYHQ_PASSWORD')
export PYHQ_CONTRACT=$(bashio::config 'PYHQ_CONTRACT')
export PYHQ_OUTPUT=$(bashio::config 'PYHQ_OUTPUT')

# Check user and password
if [ -z "$PYHQ_USER" ] || [ -z "$PYHQ_PASSWORD" ]  && [ "$PYHQ_OUTPUT" != "MQTT" ]
then
    echo 'Error: No user or password. Set both environnement variables PYHQ_USER and PYHQ_PASSWORD or PYHQ_OUTPUT=MQTT'
    exit 1
fi

# Output type
if [ ! -z "$PYHQ_OUTPUT" ]
then
    case "$PYHQ_OUTPUT" in
        "TEXT")
            PYHQ_CMD_OUTPUT=""
        ;;
        "JSON")
            PYHQ_CMD_OUTPUT="-j"
        ;;
        "INFLUXDB")
            PYHQ_CMD_OUTPUT="-i"
        ;;
        "CONTRACTS")
            PYHQ_CMD_OUTPUT="-l"
        ;;
    esac
else
    PYHQ_CMD_OUTPUT=""
fi

# Contract
if [ ! -z "$PYHQ_CONTRACT" ]
then
    PYHQ_CMD_CONTRACT="-c $PYHQ_CONTRACT"
fi

# Config
if [ -z "$CONFIG" ]
then
    export CONFIG="/config/pyhq-config.yaml"
fi

if [ "$PYHQ_OUTPUT" == "MQTT" ]
then
    mqtt_pyhydroquebec
else
    pyhydroquebec -u $PYHQ_USER -p $PYHQ_PASSWORD $PYHQ_CMD_OUTPUT $PYHQ_CMD_CONTRACT
fi
