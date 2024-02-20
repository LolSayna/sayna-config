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
sudo apt install -y wget tmux htop tree hwinfo mlocate firefox keepass2 fzf tldr
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
* Stow - symlink farm manager, not used and only use install script.

# Further Features
* Automated installion (E.g. Vscode, Google Drive, PDf support)
* Remote desktop and ssh setup
* System maintenance/General recommendations (arch wiki)?
* Title is controled by zsh.
* Customize my Neofetch

# Inspirations
* DevOps Toolbox - https://github.com/omerxx/dotfiles/tree/master
  * [Tmux setup](https://www.youtube.com/watch?v=GH3kpsbbERo&list=PLmcTCfaoOo_huhLl9_i6IOjiqURVDgEFB&index=21) + [more features](https://www.youtube.com/watch?v=_hnuEdrM-a0)
* Typecraft - https://github.com/cpow/cpow-dotfiles/tree/master
  * https://www.youtube.com/watch?v=H70lULWJeig&list=WL&index=8 https://www.youtube.com/watch?v=wNQpDWLs4To&list=PLsz00TDipIfct4F3pHv6_uI9OyjphQEGZ https://www.youtube.com/watch?v=ZDV4edcaXSY
* DreamsofCode https://github.com/dreamsofcode-io/tmux
  * https://www.youtube.com/watch?v=DzNmUNvnB04&list=WL&index=7&t=668s https://www.youtube.com/watch?v=lsFoZIg-oDs&list=WL&index=6&t=52s https://www.youtube.com/watch?v=Mtgo-nP_r8Y&list=WL&index=5&t=53s
* https://github.com/pixegami/terminal-profile
* https://www.youtube.com/watch?v=y6XCebnB9gs
