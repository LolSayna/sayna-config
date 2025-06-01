#bin/bash
# Save current dotfile configuration to this repository

HERE=$(pwd)/dotfiles
# must match .zshrc.local
XDG_CONFIG_HOME=$HOME/.config

# Alacritty
cp $XDG_CONFIG_HOME/alacritty/alacritty.toml $HERE/alacritty.toml 

# Zsh
cp $HOME/.zshenv $HERE/.zshenv
cp $XDG_CONFIG_HOME/zsh/.zshrc $HERE/zsh/.zshrc
cp $XDG_CONFIG_HOME/zsh/.zshrc.local $HERE/zsh/.zshrc.local
cp $XDG_CONFIG_HOME/zsh/.p10k.zsh $HERE/zsh/.p10k.zsh

# Tmux
cp $XDG_CONFIG_HOME/tmux/tmux.conf $HERE/tmux.conf

# Neovim
cp -r $XDG_CONFIG_HOME/nvim/ ~/sayna-config/dotfiles/

# VsCode
cp $XDG_CONFIG_HOME/Code/User/settings.json $HERE/code/settings.json
cp $XDG_CONFIG_HOME/Code/User/keybindings.json $HERE/code/keybindings.json

# Gdb
cp $XDG_CONFIG_HOME/gdb/gdbinit $HERE/gdbinit

echo "Done writing config, dont forget to upload :)."
