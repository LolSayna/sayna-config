# My custom Linux config
Linux .config folder and Terminal setup.

- [x] alacritty - Terminal Emulator
- [x] zsh - Shell (p10k)
- [x] neovim - Text Editor (NvChad)
- [x] tmux - Terminal Multiplexer

---
# Setup
## Prerequisites
Login+Networking working
```bash
# Choose keyboard layout (Debian)
sudo dpkg-reconfigure keyboard-configuration
# Update software repositories
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
```

## General Installation
Last tested on 24.04 Ubuntu
```bash
# Install core utils
sudo apt install -y build-essential curl wget tree git tmux htop firefox keepass2 tldr wireguard 
# Install more utils (neofetch outdated, still works)
sudo apt install -y btop micro wavemon hwinfo plocate fzf vlc meld lm-sensors imagemagick ffmpeg zsh neofetch neovim
# Even more stuff (not sure was ich davon alles brauche)
sudo apt install -y ranger wikiman lynx yt-dlp spek openssh-server flatpak

# Alacritty (via ppa)
sudo add-apt-repository ppa:aslatter/ppa -y && sudo apt install -y alacritty 

# Install Rust (with -y as parameter)
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y
cargo install --locked dysk

# VsCode (from https://code.visualstudio.com/docs/setup/linux#_install-vs-code-on-linux)
sudo apt install gpg apt-transport-https 
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install code

# Install npm
sudo apt install nodejs npm
```

## Config
```bash
# Generate SSH Key
ssh-keygen -t ed25519

# Git
git config --global user.email "mareike.burg@web.de"
git config --global user.name "Sayna" # or Mareike Burg
git config --global core.editor "nvim"

# Copy repository
git clone git@github.com:LolSayna/sayna-config.git

# Execute script (chmod +x setup.sh)
./sayna-config/setup/setup.sh

# Zsh default shell (requires log out) (current `echo $SHELL`)
chsh -s $(which zsh) 
sudo chsh -s $(which zsh)

# Remote Terminal Color Issues
# on host
infocmp alacritty > alacritty.terminfo
# on target
tic -x ~/sayna-config/alacritty.terminfo
```

## Write system config to repo
```bash
# Save current dotfiles to repository (chmod +x write.sh)
./sayna-config/setup/write.sh
```

## Force repo to system config
```bash
# Push current config into repository (chmod +x overwrite.sh)
./sayna-config/setup/overwrite.sh

## Lazygit (old) TODO remove!
```bash
# Install LazyGit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
```

---

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
