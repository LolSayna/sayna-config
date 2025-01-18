# How to use Docker

## Install
TODO

## Compose
- `docker-compose` old version, newer `docker compose`
- `docker compose up/down` to start/stop, `-d` to start detached
- `docker compose logs -f` in folder to attach to logs

### Files
Create `docker-compose.yml`. Left is on host system, right is inside container. 
- ports: 4000:3000		# access container at port 3500 
- ./config:/app/config		# make sure the folder config exists in same dir

