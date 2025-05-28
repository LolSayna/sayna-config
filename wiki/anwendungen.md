# Linux applications
## Terminal
### Core
- ls (`-lha`), cat, less, echo, stat, file, diff, clear, history, pwd
- sudo, cp, touch, mkdir, mv, exec, rm, kill(one pid)/pkill(one process)/killall(one type of processes), chown, chmod, sleep, ln, dd
- find, se/awkd, grep, locate, time, wc
- unzip, tar -xf, gunzip
- man (highlighting via less config in .zshrc), `uname -r` (kernel version), `cat /etc/*release` distro
- git, gcc/clang, python3, column, xargs
- curl - web requests, wget - file downloader
- ssh, scp - remote login/copy
	- `ssh-keygen` and `ssh-copy-id`
- rysnc - file synchronisation
	- `-r` recursive, `P` progress bar + partial copy, `a` archive/keep permission, `v` verbose, `h` human format
- df -h (disk usage), ps -aux (processes)/pgrep, sensors (temperatur), lsblock, du, pidof, ip, dmesg, mount/unmount, free
- journalctl, networkctl, ip
- bc - calculator

### Shell inbuild
- cd
- alias - cmd replacment with pattern
- type - find out if cmd is buildin or core utils
- fg/bg - move jobs to background/foreground, also with `cmd &`
- jobs - list background tasks


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
- dysk - df extension (install via cargo)
- top, htop, gtop, btop - system/tasks overview
- fzf - fuzzyfinder
- hwinfo - hardware configuration
- hyperfine - benchmarking tool
- neofetch - system information tool (deprecated)
	- fastfetch (customizable), macchina (rust), hyFetch
- ranger - file manger (vi keybindings)

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
- cmatrix - matrix green characters
- phoronix test suit - benchmark set test suite
- termusic/ncmpcpp - music player
- rmpc - music player MPD client
- mpd - music player daemon, server for audio players
- terminal image viewer?

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
- keypass2 - keypass based password manager (todo terminal based alternative?)
- meld - diff viewer
#### Audio
- spek - graphical spectrum analyzer
- speachnote - tts, text to speach engine
#### Image/Video
- blender - 3d animation
- gimp - image viewer/editor
- vlc - video player
- mvp - video player, from terminal?
- photoFilmStrip - slideshow creator

