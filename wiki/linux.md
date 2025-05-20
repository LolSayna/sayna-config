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
- Arch [pacman]
  - Manjaro/Gentoo
  - EndeavourOS ausprobieren?
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
- budgie, gnome, (kde) plasma, mate, xfce, lxqt/lxde, cinnamon
### Display manager (login manager, needs window manager)
- xdm (example)
### Window manager(X)/Compositors(Wayland)
- stacking (floating) vs tiling (no overlap, keyboard based) vs dynamic (mixed)
- x
	- stacking: mutter (gnome), tiling: i3, dynamic: dwm
- wayland
	- stacking: mutter, tiling: sway, dynamic: dwl, hyprland
### Composite manager
- additon to X window managers, to add shadows/blurs/fading. Sometimes already included (e.g. mutter)
- picom


## Components
### Shells/Terminal
- bash vs **zsh** vs fish
- tmux, alacritty

### Init Prozesse
- SysVInit -> älter, use `service`
- SystemD -> neuer, use `systemctl`

### Other
- Networking (networkmanager)
- Firewall (ufw)
- Bootloader (grub)
- Clipboard (xclip)
- Screenshot (flameshot, maim/shotgun X11, grim wayland)
- file manager (nemo)
- menu/app launcher
- statusbar
- notify-send + dunst - Notification windows, [video](https://www.youtube.com/watch?v=cBx9P3bvDCk)

