# Home Assistant Base

Basic docker compose file to setup [home-assistant](https://www.home-assistant.io/) using [home-assistant-image](https://github.com/salberternst/home-assistant-image) and [home-assistant-init](https://github.com/salberternst/home-assistant-init)

The setup contains the following services:
* Home Assistant
* InfluxDB
* MariaDB
* Mosquitto

## Run

* Generate random credentials by running ```./scripts/generate_credentials.sh```
* Run ```docker-compose up -d```

## Authors

Sebastian Alberternst <sebastian.alberternst@dfki.de>

## License

MIT 
