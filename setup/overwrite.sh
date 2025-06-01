#!/bin/bash
# Sayna linux setup install script

HERE="$(pwd)/dotfiles"
DOWNLOADS="$HOME/Downloads"
# must match .zshrc.local
XDG_CONFIG_HOME="$HOME/.config"
XDG_DATA_HOME="$HOME/.local/share"	# install small programms here

# [Alacritty]
cp -a $HERE/alacritty.toml $XDG_CONFIG_HOME/alacritty/alacritty.toml
echo "Added alacritty config."

# [Zsh]
# this is only file in homedir, and sets ZDOTDIR
cp $HERE/.zshenv $HOME/.zshenv
echo "Added Zshenv config."
cp -r $HERE/zsh/ $XDG_CONFIG_HOME/zsh/
echo "Added zsh config."

# [TMUX]
cp $HERE/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf
echo "Added Tmux config."

# [Layzvim]
cp -r $HERE/nvim $XDG_CONFIG_HOME/
echo "Added Lazyvim config."

# [VSCODE]
cp $HERE/code/settings.json $XDG_CONFIG_HOME/Code/User/
cp $HERE/code/keybindings.json $XDG_CONFIG_HOME/Code/User/
echo "Added VsCode config."

# [Gdb]
cp -a $HERE/gdbinit $XDG_CONFIG_HOME/gdb/gdbinit
echo "Added gdb config."

echo "Pulled config from repo :)."
