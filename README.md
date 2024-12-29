# My custom Linux config
Linux .config folder and Terminal setup.

- [x] alacritty - Terminal Emulator
- [x] zsh - Shell (p10k)
- [x] neovim - Text Editor (NvChad)
- [ ] tmux - Terminal Multiplexer


# Prerequisites
## Initial Setup
Networking + Firefox -> Sign In

## General Setup
Only tested for Debian/Ubuntu 23.04, last edited on 22.04 Ubuntu Budgie 01.07.24.
```bash
# Update software repositories
sudo apt update -y && sudo apt upgrade -y

# Install core utils
sudo apt install -y build-essential git micro
# Install more utils
sudo apt install -y wget tmux htop tree hwinfo mlocate firefox keepass2 fzf tldr vlc wireguard
# Install terminal setup
# Alacritty ppa
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install -y alacritty zsh codium neofetch neovim
#Vscode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

# Install ssh
sudo apt install -y openssh-server

# Make zsh default shell
chsh -s $(which zsh)
```

## Github
```bash
# Github
git config --global user.email "mareike.burg@web.de"
git config --global user.name "Mareike Burg"
git config --global core.editor "nvim"
ssh-keygen -t ed25519
```

## Fix remote Terminal issue
Get ssh terminal compatibility / fix missing terminal \
ON HOST:
`infocmp alacritty > alacritty.terminfo`
ON TARGET
`tic -x ~/sayna-config/alacritty.terminfo`




# My setup installation
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
```bash
# Install Rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# TODO get config folder via Github
# ...

# Inside nvim run
:MasonInstallALL

```

# Shortcuts
## Neovim
`:q - :q! - :wq` - Exit, Exit without saving, Exit Saving\
`h - j - k - l` - Movement\
`100G - gg - G` - Move to 100, to start, to end\
`/ - n - N` - Search, Next, Next backwards\
`w - e - $` - Until next word, End of word, End of line

`i` - Enter Text Mode (insert)\
`ESC` - Leave Mode (normal)\
`x` - Delete char\
`dd` - Delete line

`u - CTRL R` - Undo, Redo\
`v` - Visual Mode/ Mark text\
`y - yw - yy` - Copy marked text, Copy word, Copy line\
`p` - paste text

### NvChad
`Tab - SHIFT Tab` - Switch Buffers\
`SPACE x` - Close buffer\

`SPACE ff` - Find files (used to open Buffers)\
`CTRL n` - Filetree\
    `a` - add File\
`CTRL h/l` - Move into/out Filetree\
`SPACE th` - Set Theme\


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

## Tmux
### Starting
`tmux ls` - list active\
`tmux new -s NAME` - create Session\
`tmux a -t NAME` - attach to Session\
### General
`CTRL B` - Prefix\
`Prefix r` - Reload config\
`Prefix I` - Install tpm plugins\
### Sessions
`Prefix : 'new'` - New Session\
`Prefix $` - Rename Session\
`Prefix (/)` - Cycle Session\
`Prefix d` - Detach Session\
### Windows
`Prefix w` - Preview Sessions + Windows\
`Prefix c` - New Window\
`Prefix ,` - Rename Window\
`Prefix n/p` - Cycle Window\
`Prefix &` - Close Window (or use `CTRL - d`)\
### Panes
`Prefix PgUp/PgDown` - Scroll\
`Prefix %/"` - Split horizontal/vertical\
`Prefix up/down/left/right` - Move Cursor\
`CTRL h/j/k/l` - Move Cursor\
`Prefix 'hold' up/down/left/right` - Resize Pane\
`Prefix x` - Close Pane\
`Prefix z` - Toogle Zoom\

## Linux Basics
### grep "SOME" PATH ///// cat *.txt | grep "SOME"
`-r ` - Search through Directories
`-v` - Invert
`-i` - Case insensitve
`-n ` - Show line number\
`-C 3` - Print 3 lines before + after match\

### find . -name "*.txt"
`-exec grep -l "TEXT" {} +` - Find File by content 
`-iname` - Case insensitve
`-type f/d` - Files or Directories
`-size +1G` - Files bigger then

### fzf
# ! does not find .* files
Search a file on system
`-m` + `TAB` - Search multiple Files
`myf` + `mye` - Custom Alias in my zshrc



# Remarks
* Fonts: Nerdfonts includes 6 variants. Monospaced/Proportional/Regular(Mixed) -> choose Monospaced to prevent terminal issues. NL Suffix is no ligatures, so special charactesr that combine to or more charaters -> choose NL
  * Hatte Probleme mit JetBrainsFont -> choose RobotoMonoNerdFont insted
* keepass2 vs keepassxc, keepass2 not newest version, but in apt for debian.
* Alacritty version, debian apt only has 0.11 which uses old yml config files, 0.13 is current.
* SHOULD BE FIXED!:neovim install doenst work, installs file in wrong dir, script needs to be called from home. Doesnt find nvchad config
* check $XDG_CONFIG_HOME and $EDITOR and sudoedit -> why does it take nano?

# Future Features
* Full custom zsh config (also file location to .config).
* Better nvim setup: [C++ example](https://youtu.be/lsFoZIg-oDs)
* Neofetch - create custom config.
* Stow - symlink farm manager.
* Instructions how to setup git ssh.
* Sync Vscode settings and extensions.
* gtop - maybe sudo apt install npm | sudo npm install gtop -g


# Inspirations
* DevOps Toolbox - https://github.com/omerxx/dotfiles/tree/master
  * [Tmux setup](https://www.youtube.com/watch?v=GH3kpsbbERo&list=PLmcTCfaoOo_huhLl9_i6IOjiqURVDgEFB&index=21) + [more features](https://www.youtube.com/watch?v=_hnuEdrM-a0)
* Typecraft - https://github.com/cpow/cpow-dotfiles/tree/master
  * [Tmux](https://www.youtube.com/watch?v=H70lULWJeig&list=WL&index=8)
  * [Oh my zsh](https://www.youtube.com/watch?v=wNQpDWLs4To&list=PLsz00TDipIfct4F3pHv6_uI9OyjphQEGZ)
  * [2024 version, with starship](https://www.youtube.com/watch?v=ZDV4edcaXSY)
* DreamsofCode https://github.com/dreamsofcode-io/tmux
  * [Tmux config](https://www.youtube.com/watch?v=DzNmUNvnB04&list=WL&index=7&t=668s) 
  * [C++ neovim](https://www.youtube.com/watch?v=lsFoZIg-oDs&list=WL&index=6&t=52s)
  * [NvChad](https://www.youtube.com/watch?v=Mtgo-nP_r8Y&list=WL&index=5&t=53s)
* Pixegami - https://github.com/pixegami/terminal-profile
  * [Show terminal](https://www.youtube.com/watch?v=UvY5aFHNoEw)
* The Linux Cast
  * [Zsh p10k install example](https://www.youtube.com/watch?v=oR8v9uOCq0E)
* Mental Outlaw
  * [NvChad](https://www.youtube.com/watch?v=yW3ovyQCwpw)
* Vim
  * [Tutorial](https://vimschool.netlify.app/introduction/vimtutor/)
  * [Blog](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)

[nice config](https://youtu.be/ud7YxC33Z3w?si=qkZo4V6Iu0uvEXoc)
