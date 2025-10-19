# Linux applications
## Terminal
### Core
- less, file, diff, clear
- sudo, exec, pkill(one process)/killall(one type of processes)
- find, se/awkd, grep, locate, time, wc
- unzip, tar -xf, gunzip
- man (highlighting via less config in .zshrc), , `cat /etc/*release` distro
- git, gcc/clang, python3, column, xargs
- curl - web requests, wget - file downloader
- ssh, scp - remote login/copy
	- `ssh-keygen` and `ssh-copy-id`
- rysnc - file synchronisation
	- `-r` recursive, `P` progress bar + partial copy, `a` archive/keep permission, `v` verbose, `h` human format
- ps -aux (processes)/pgrep, lscpu, pidof, ip, dmesg, mount/unmount, free
- journalctl, networkctl
- bc - calculator
- whereis - find location of binaries (and man pages and more)
- systemd-analyze blame - get boot time stats
- cron/crontab - automation of reoccuring tasks (alternative: systemd Timer Units)
- xrandr - resize and rotate monitor settings (X Window)
- jq - json parser
- fc-list - list installed fonts

### Util-Linux
- lsblk - list block devices, e.g. disks/usb-drives
- fdisk - modify disk partition table; sfdisk for script usage
- fsck - check/repair file system
- hexdump/hd - display contents in hex, decimal, ascii, ...

### GNU Coreutils (list of short programs to make os complete,  mostly adheares to POSIX)
- ls (`-lha`), cat, echo/printf(more formattting) (also shell buildin), cut
- date, id, df -h (disk space), du, stat, pwd, tty, uname (`-a`), uptime, who, wc
- chmod, chown, cgrp, ln, cp, mv, rm, mkdir, touch, tee (redirect output)
- chroot, dd, sleep, kill (by pid), test (enables if for bash), yes, seq+numfmt, env (run program in enviroment)
- dd - convert/copy file

### Shell inbuild (by bash, zsh, or multiple shells)
- cd, history, echo/printf(more formattting) (also GNU)
- alias - cmd replacment with pattern
- type - find out if cmd is buildin or core utils
- fg/bg - move jobs to background/foreground, also with `cmd &`
- jobs - list background tasks
- which - find location of binaries
- where(only zsh), type, which - get information about cmds 


### Editors
- vi/vim/neovim
- nano, micro
- helix (vim-like, modern)

### Additional core (need to be installed)
- tmux
- tldr - command examples (tealdeer rust client)
- tree - list files including folder structure
- wikiman - offline wiki reader (no apt install, add each wiki)
	- `wikiman -c TEXT` search and show source
- w3m - terminal web browser
- lynx - text mode web browser
- bat - cat extension
- dysk - disk usage, df extension (install via cargo)
- top, htop, gtop, btop - system/tasks overview
- fzf - fuzzyfinder
- hwinfo - hardware configuration
- neofetch - system information tool (deprecated)
	- fastfetch (customizable), macchina (rust), hyFetch
- ranger - file manger (vi keybindings)
- locate(plocate) - find filename anywhere
- sensors (temperatur)
- stress
- caligula - disk imaging tool (more user friendly, less breaking risk)
- iperf3 - network speed benchmark
- nmtui - networkmanager cli
- fuser - finds user who holds a file open
- lsof - list open files, finds all "files" of a user/find all processes of a file

### Util
- imageMagick - image converter
	- `convert IN.png -resize 1920x1080 OUT.png`, `import OUT.png` for screenshot
- ffmpeg - audio+video converter
	- `ffmpeg -i IN.m4a -ar 16000 -ac 1 OUT.wav` good format for tts
- tesseract - optical image recognition, image to text
	- `tesseract -l deu IN.png OUT.txt`
- wavemon - wifi signal analyzer
- wttr.in - weather forecast
	- `curl "v2.wttr.in"` or `curl "wttr.in/?format=3"`
- yt-dlp - youtube downloader
	- [Repo Link](https://github.com/yt-dlp/yt-dlp)
	- usage: `yt-dlp FLAGS "URL"`, `-F` to show available formats
- pipes.sh - animated pipes screensafer
- asciiquarium - terminal animated aquarium
- lolcat - cat with random colors
- hollywood/rust-stakeholder - do random stuff
- pastel - cli color manipulation/generation
- astroterm - terminal based star map
- cmatrix - matrix green characters
- phoronix test suit - benchmark set test suite
- hyperfine - benchmarking tool
- unixbench - general unix benchmark set
- termusic/ncmpcpp - music player
- rmpc - music player MPD client
- mpd - music player daemon, server for audio players
- terminal image viewer?
- wireguard - vpn client
- minicom - serial reader
	- `CTRL-a-w` toggle line wrap, `CTRL-a-u` add carriage return
- qemu - virtualization
	- debugging: `monitor info {registers,tlb,menu}`
- gdb - debugger
	- `p/x NAME` - print in hex
	- `x/10 0x123` - print memory at 0x123
- xxd - hexdump or reverse for binary

## GUI
### Coding
- VsCode (Code Server - remote hosten), extensions/settings/profiles todo
### Browser
- Chrom/Chromium (Google), Ungoogled Chromium, Brave, and more
	- QT Webengine (allows to embeed browser into QT app)
	- Qutebrowser (keyboard based, minimal gui, customizable, no addblock/extensions)
- Firefox
	- Librewolf (privacy focused, no bookmark sync)
	- Zen Browser (different layout, tabs on left side)
- Stylus - Plugin that allows custom css for websites

### Util
- keepass2 - keypass based password manager (todo terminal based alternative?)
- meld - diff viewer
- sweetHome3D - interior design software
- zotero - bibliography tool
- (gnome) Disk Usage Analyzer - disk usage
- ausweisapp2 - german online id app via smartphone; apt version outdated, used flatpak (09-2025)
#### Audio
- spek - graphical spectrum analyzer
- speachnote - tts, text to speach engine
- audacity - audiorecording
#### Image/Video
- blender - 3d animation
- gimp - image viewer/editor
- nsxiv - minimal image viewer (on 22.04 Ubuntu via nix, status bar missing info?)
- inkscape - vector graphics editor
- vlc - video player
- mvp - video player, from terminal?
- photoFilmStrip - slideshow creator
- kdenlive - videoeditor
- obs - videocapturing
