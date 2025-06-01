#bin/bash
# Save current dotfile configuration to this repository

HERE=$(pwd)/dotfiles
# must match .zshrc.local
XDG_CONFIG_HOME=$HOME/.config

# alacritty
cp $XDG_CONFIG_HOME/alacritty/alacritty.toml ~/sayna-config/dotfiles/alacritty.toml

# gdb
cp $XDG_CONFIG_HOME/gdb/gdbinit ~/sayna-config/dotfiles/gdbinit

# p10k
cp ~/.p10k.zsh ~/sayna-config/dotfiles/.p10k.zsh

# zsh
cp ~/.zshrc ~/sayna-config/dotfiles/.zshrc
cp ~/.zshrc.local ~/sayna-config/dotfiles/.zshrc.local

# Neovim
cp -r $XDG_CONFIG_HOME/nvim/ ~/sayna-config/dotfiles/

# Tmux
cp $XDG_CONFIG_HOME/tmux/tmux.conf ~/sayna-config/dotfiles/tmux.conf

# VsCode
cp $XDG_CONFIG_HOME/Code/User/settings.json ~/sayna-config/dotfiles/vscode-settings.json

echo "Done writing config, dont forget to upload :)."
