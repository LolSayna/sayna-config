# Linux applications
## Terminal
### Core
- cat, echo, ls, cd, cp, scp mv, sudo, clear, less, sed, grep
- man (highlighting via less config in .zshrc), git, gcc/clang, time
- curl - web requests, wget - file downloader
- ssh - remote login
	- `ssh-keygen` and `ssh-copy-id`
- rysnc - file synchronisation
	- `-r` recursive, `P` progress bar + partial copy, `a` archive/keep permission, `v` verbose, `h` human format
- df -h (disk usage), ps -aux (processes)

### Additional core (need to be installed)
- tmux
- tldr - command examples (tealdeer rust client)
- tree - list files including folder structure
- wikiman - offline wiki reader (no apt install, add each wiki)
	- `wikiman -c TEXT` search and show source
- w3m - terminal web browser
- bat - cat extension
- dysk - df extension (install via cargo)
- top, htop, gtop, btop - system/tasks overview
- fzf - fuzzyfinder
- hwinfo - hardware configuration
- hyperfine - benchmarking tool

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

### Util
- keypass2 - keypass based password manager (todo terminal based alternative?)
- meld - diff viewer
- blender - 3d animation
- gimp - image viewer/editor
- speachnote - tts, text to speach engine
- spek - graphical spectrum analyzer
- vlc - video player

