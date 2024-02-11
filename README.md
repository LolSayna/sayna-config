# My custom Linux config

Linux .config folder and Terminal setup.

- [x] alacritty - Terminal Emulator
- [ ] zsh - shell
- [ ] tmux - terminal multiplexer
- [ ] neovim - text editor


# Prerequisites

Only tested for Debian/Ubuntu 23.04, last edited on 11.02.2024.
```bash
# Update software repositories
sudo apt update -y && sudo apt upgrade -y

# Install core utils
sudo apt install -y build-essential git micro
# Install more utils
sudo apt install -y wget tmux htop tree hwinfo mlocate firefox keepass2 
# Install terminal setup
sudo apt install -y alacritty zsh neovim neofetch  

# Install ssh
sudo apt install -y openssh-server
```


# Install
```bash
# Copy repository
git clone https://github.com/LolSayna/sayna-config.git

# Execute script (chmod +x setup.sh)
./sayna-config/setup.sh
```


# Shortcuts
## Alacritty
`CTRL +` - Zoom in\
`CTRL -` - Zoom out\
`CTRL F` - Search Backwards\
`CTRL V` - Paste

`Mark with Mouse` - Copy\
`CTRL Space` - Enter copy Mode\
`v` - Start Selection\
`y` - End Selection\

`Alt v` - Select Word\
`Shift v` - Select Line\
`CTRL v` - Select Block

## ZSH
`CTRL R` - Search previous commands\
`CTRL L` - Clear screen

# Remarks
* keepass2 vs keepassxc, keepass2 not newest version, but in apt for debian.
* Alacritty version, debian apt only has 0.11 which uses old yml config files, 0.13 is current.

# Further Features
* Automated installion (E.g. Vscode, Google Drive, PDf support)
* Remote desktop and ssh setup
* System maintenance/General recommendations (arch wiki)?
* Title is controled by zsh.

