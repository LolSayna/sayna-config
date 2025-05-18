# Linux - OS level
## Distro
- Debian [APT based] (ParrotOS, Raspbian)
  - Ubuntu (Mint, PopOS)
- openSUSE [zypper]
- RHEL [RPM based]
  - Fedora (ehemals stable version, now testing branch)
  - Rocky (open source fork of stable)
  - CentOS
- NixOS [Nix]
- Arch [pacman] (Manjaro/Gentoo/EndeavourOS)
- (FreeBSD) != Linux


## Packetmanager
- APT
- RPM + yum/dnf(modern version of dnf))
- pacman + Arch User Repository
- zypper
### Packetmanager distro independent
- Appimages -> Insecure, but Portable + Independent
- Flatpaks -> nur grafisch, enthalten alle nötigen Librarys, sicherer (no root)
- Snap -> by Canonical(Ubuntu), has Autoupdate, like container
- pip -> Python
    - pipx - ohne enviroments

## Display
- display server (foundation for gui): X/X11/x.org (old) vs Wayland (newer)
- xwayland compatibility x layer for wayland
### Desktop enviroments (bundle of gui programs)
- budgie, gnome, (kde) plasma, mate, xfce, lxde
### Display manager (login manager, needs window manager)
- xdm (example)
### Window manager(X)/Compositors(Wayland)
- stacking (floating) vs tiling (no overlap, keyboard based) vs dynamic (mixed)
- x/tiling: i3, dynamic: dwm
- wayland/tiling: sway, dynamic: dwl, hyprland


## Shells
- bash vs **zfs** vs fish


## Init Prozesse
- SysVInit -> älter, use `service`
- SystemD -> neuer, use `systemctl`


