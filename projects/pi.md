# Pi 5 + Display Project (2025-10)
- format SD card (rpi-imager version >= 1.9.6), include hostname, network, locals, password/ssh key
- `ssh rp5` + `sudo apt update && sudo apt upgrade && sudo apt autoremove` + `sudo raspi-config` (5 Localization Options)/(L1 Locale)/(de_DE)
- assign static ip in router + boot

### Install Docker
Use convenience script (not for production) including docker compose
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
cat get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker sayna
docker compose --version
rm get-docker.sh
# Autostart docker
sudo systemctl enable docker
```

## Apps

### Gittea
```bash
nano compose.yml
docker compose up --detach

# stop
docker compose down
```

### Traefik
```bash
docker network create frontend

nano compose.yml
nano traefik.yml

docker compose up -d

# stop
docker compose down
```

### Bind9 DNS
Idea is to forward all dns requests from the local domain (e.g. test.rp5.home, git.rp5.home) to rp5.home and let traefik forward them to the right ports. The router needs to include the custom dns server, for which the fritzbox does not provide fallback support. Maybe try this when Pi is stable (together with pihole?). [Tutorial](https://youtu.be/syzwLwE3Xq4?si=pyZJ-bazFZEZezXI)
```bash
sudo apt install dnsutils

# this works
nslookup rp5.home rp5
nslookup test.rp5.home rp5

# but fritzbox prevents this
nslookup rp5.home
```

## RP-5 Overview
Found at `rp5.local` or `192.168.178.5`, using its bind9 dns at `rp5.home/*.rp5.home`
| Service       | Type          | Port      | Path      |  Last Modifed
| :-:           | :-:           | :-:               | :-:       | :-:
| **Bind9**     | Docker        | 53                | -         | ~~2025-10~~
| **Nginx**     | Docker        | -                 | /nginx    | ~~2025-10~~
| **Traefik**   | Docker        | 8080(Gui)/80(web)     | -         | 2025-10
| **Gittea**    | Docker        | 3000(Gui)/222(ssh)    | /gitea    | 2025-10

