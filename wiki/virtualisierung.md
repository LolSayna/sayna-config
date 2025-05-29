# Different kinds of Virtualisation
## Hypervisor
- Type 1 (native): Hyper-V (Windows), KVM, Proxmox, Xen
- Type 2 (hosted): LXC, QEMU, VirtualBox, VMWare

---

### VirtualBox (Windows)
- `winget install -e --id Oracle.VirtualBox`
- VirtualBox Additions (Clipboard, Window Resizing, Shared Folder, Drag/Drop broken for me), check with Machine->Session Information -> Runtime Information
- might need to switch Display->Graphics Controller (restart might work)
  

---
## Container
More lightwight, no drivers
### Docker
#### Install
TODO

#### Compose
- `docker-compose` old version, newer `docker compose`
- `docker compose up/down` to start/stop, `-d` to start detached
- `docker compose logs -f` in folder to attach to logs

#### Files
Create `docker-compose.yml`. Left is on host system, right is inside container. 
- ports: 4000:3000		# access container at port 3500 
- ./config:/app/config		# make sure the folder config exists in same dir

#### Snippets
- `docker exec -it <running_container_name_or_id> \bin\bash`

