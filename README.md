# My custom Linux config

Linux .config folder and Terminal setup.


# Prerequisites

Only tested for Debian/Ubuntu 23.04, last edited on 11.02.2024.
> more (arch?) is planed
```bash
# Update software repositories
sudo apt update -y && sudo apt upgrade -y

# Install core utils
sudo apt install -y build-essential git micro
# Install more utils
sudo apt install -y wget tmux htop tree hwinfo firefox keepass2
# Install terminal setup
sudo apt install -y alacritty zsh neovim neofetch  

# Install ssh
sudo apt install -y openssh-server
```


# Install





# Remarks
* Choose keepass2 vs keepassxc, keepass2 not newest version.
* Add [VScode](https://code.visualstudio.com/docs/setup/linux) installation if needed.
* Add Google Drive Sync for productivity with Windows system.
* Add PDF support by choosing program, also PDF manipulation tools.
* Install Fonts.
