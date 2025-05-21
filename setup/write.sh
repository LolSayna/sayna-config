#bin/bash
# Save current dotfile configuration to this repository

# alacritty
cp ~/.config/alacritty/alacritty.toml ~/sayna-config/dotfiles/alacritty.toml

# gdb
cp ~/.config/gdb/gdbinit ~/sayna-config/dotfiles/gdbinit

# p10k
cp ~/.p10k.zsh ~/sayna-config/dotfiles/.p10k.zsh

# zsh
cp ~/.zshrc ~/sayna-config/dotfiles/.zshrc
cp ~/.zshrc.local ~/sayna-config/dotfiles/.zshrc.local

# Neovim
cp -r ~/.config/nvim/ ~/sayna-config/dotfiles/

# Tmux
cp ~/.config/tmux/tmux.conf ~/sayna-config/dotfiles/tmux.conf

# VsCode
cp ~/.config/Code/User/settings.json ~/sayna-config/dotfiles/vscode-settings.json

echo "Done writing config, dont forget to upload :)."
