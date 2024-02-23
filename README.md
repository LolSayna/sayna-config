# My custom Linux config
Linux .config folder and Terminal setup.

- [x] alacritty - Terminal Emulator
- [x] zsh - Shell
- [x] neovim - Text Editor
- [ ] tmux - Terminal Multiplexer


# Prerequisites
Only tested for Debian/Ubuntu 23.04, last edited on 23.02.2024.
```bash
# Update software repositories
sudo apt update -y && sudo apt upgrade -y

# Install core utils
sudo apt install -y build-essential git micro
# Install more utils
sudo apt install -y wget tmux htop tree hwinfo mlocate firefox keepass2 fzf tldr
# Install terminal setup
sudo apt install -y alacritty zsh neofetch  

# Install ssh
sudo apt install -y openssh-server

# Make zsh default shell
chsh -s $(which zsh)
```


# Install
```bash
# Copy repository
git clone https://github.com/LolSayna/sayna-config.git

# Execute script (chmod +x setup.sh)
./sayna-config/setup.sh
```
```bash
# Save current dotfiles to local repository (chmod +x setup.sh)
./sayna-config/write.sh
```

# Shortcuts
## Neovim


## ZSH
`CTRL C` - Interrupt\
`CTRL D` - Exit\
`CTRL R` - Search previous commands\
`CTRL L` - Clear screen

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


# Remarks
* keepass2 vs keepassxc, keepass2 not newest version, but in apt for debian.
* Alacritty version, debian apt only has 0.11 which uses old yml config files, 0.13 is current.


# Future Features
* Full custom zsh config (also file location to .config).
* Better nvim setup: [C++ example](https://youtu.be/lsFoZIg-oDs)
* Neofetch - create custom config.
* Stow - symlink farm manager.
* Instructions how to setup git ssh.


# Inspirations
* DevOps Toolbox - https://github.com/omerxx/dotfiles/tree/master
  * [Tmux setup](https://www.youtube.com/watch?v=GH3kpsbbERo&list=PLmcTCfaoOo_huhLl9_i6IOjiqURVDgEFB&index=21) + [more features](https://www.youtube.com/watch?v=_hnuEdrM-a0)
* Typecraft - https://github.com/cpow/cpow-dotfiles/tree/master
  * [tmux](https://www.youtube.com/watch?v=H70lULWJeig&list=WL&index=8)
  * [oh my zsh](https://www.youtube.com/watch?v=wNQpDWLs4To&list=PLsz00TDipIfct4F3pHv6_uI9OyjphQEGZ)
  * [2024 version, with starship](https://www.youtube.com/watch?v=ZDV4edcaXSY)
* DreamsofCode https://github.com/dreamsofcode-io/tmux
  * [tmux config](https://www.youtube.com/watch?v=DzNmUNvnB04&list=WL&index=7&t=668s) 
  * [c++ neovim](https://www.youtube.com/watch?v=lsFoZIg-oDs&list=WL&index=6&t=52s)
  * [nv chad](https://www.youtube.com/watch?v=Mtgo-nP_r8Y&list=WL&index=5&t=53s)
* Pixegami - https://github.com/pixegami/terminal-profile
  * [show terminal](https://www.youtube.com/watch?v=UvY5aFHNoEw)
* The Linux Cast
  * [zsh p10k install example](https://www.youtube.com/watch?v=oR8v9uOCq0E)
* Vim
  * [Tutorial](https://vimschool.netlify.app/introduction/vimtutor/)
  * [Blog](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)
