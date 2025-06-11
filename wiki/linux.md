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
- RPM + yum/dnf(modern version of dnf)
- pacman + Arch User Repository
- zypper
### Packetmanager distro independent
- Appimages -> Insecure, but Portable + Independent
- Flatpaks -> nur grafisch, enthalten alle nötigen Librarys, sicherer (no root)
- Snap -> by Canonical(Ubuntu), has Autoupdate, like container
- Python -> pip/pipx
- Rust -> cargo
- Nix -> nixshell

### Other packets
- install to `$XDG_DATA_HOME` or `$HOME/.local/share`
- or `~/.local/bin` or `/usr/bin`
- or `/opt`

## Display
- display server (foundation for gui): X/X11/x.org (old) vs Wayland (newer)
- xwayland compatibility x layer for wayland
### Desktop enviroments (bundle of gui programs)
- budgie, gnome, (kde) plasma, mate, xfce, lxqt/lxde, cinnamon
### Display manager (login manager, needs window manager)
- xdm (very minmal)
- gdm3 (Gnome), kdm (KDE), LightDM (xfce)
### Window manager(X)/Compositors(Wayland)
- stacking (floating) vs tiling (no overlap, keyboard based) vs dynamic (mixed)
- x
	- stacking: mutter (gnome)| tiling: i3| dynamic: dwm
- wayland
	- stacking: mutter| tiling: sway, niri (rust, scrollable)| dynamic: dwl, hyprland
### Composite manager
- additon to X window managers, to add shadows/blurs/fading. Sometimes already included (e.g. mutter)
- picom

## File systems
- fat32 - old standard, max file size 4GB
- exFAT - flash drives
- ntfs - windows
- btrfs
- ext4
- zfs


## Components
### Terminal
#### Shell
- bash vs **zsh** vs fish
#### Terminal emulator
- gnome shell, st, **alacritty**
#### Terminal Multiplexor
- tmux
#### Other
- `A && B` Execute B if A successful, `A;B` execute A then B
- Redirection (with file): `A > B` stdout of A to B, `A >> B` Append to B
- Pipe (cmd to cmd): `A | B` connect stdout of A to stdin of B

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
- menu/app launcher  (demenu)
- statusbar
- notify-send + dunst - Notification windows, [video](https://www.youtube.com/watch?v=cBx9P3bvDCk)
- `/etc/skel` - template folder for new users home directory

