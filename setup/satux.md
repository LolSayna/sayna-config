# Satux Laptop
## Hardware and OS
- Linux Kernel 6.12.57
- Debian 13
- Tuxedo Drivers
- Systemd services (also called daemons)

## Display Server (all wayland)
### Niri: (rust; build-25.08/25.11) compositor (scrollable-tiling, rust)
- live-reloading config, kdl format
- `$XDG_CONFIG_HOME/niri/config.kdl`
- Win/Super key for shortcuts

### Legacy X Support: xwayland-satellite (rust; build-0.8)


## Guis
- Thunderbird (apt; 140.5.0esr)


## Style
### App launcher
- fuzzel (C; apt-1.12)/1.13

### Status bar
- waybar (C++; apt-0.12)/0.14
- TODO nmapplet

### Locking
- swaylock (C; apt-1.8.2t)/1.8.4

## Networking
1. iproute2 package for `ip` (NOT persitent changes)
1. Network interfaces (hardware) - `ip link`
1. Connect to network (incl. authentification)
1. Receive IP from DHCP server - `ip a`
1. IP Routing
1. DNS resolution

- hostname: `hostnamectl` or edit `/etc/hostname`
- [network manager](https://wiki.archlinux.org/title/Network_configuration#Network_managers): automates some (or all) steps above
    - dhclient, networkmanager, systemd-networkd, wpa_supplicant, iwd#
- interface names: [via udev](https://wiki.archlinux.org/title/Network_configuration#Change_interface_name), create `/etc/udev/rules.d/10-network.rules`

### NetworkManager
- different front-end: nmcli, nmtui, nmapplet
    - `nmcli connection`
- use wpa_supplicant for wireless networks, installed to `sbin` (cmd only found as root!)
- use `/etc/resolv.conf` for dhcp?
- need extra packages for wpn support (wireguard nativ)
- TODO: nmapplet into waybar
- TODO: [eduroam](https://www.luis.uni-hannover.de/de/services/kommunikation/netz/angebote-im-service-netz/wlan/wlan-einrichtung), should be possible with only nmtui (and wpa_supplicant installed)
