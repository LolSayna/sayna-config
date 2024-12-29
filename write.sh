#bin/bash
# Save current dotfile configuration to this repository

# alacritty
cp ~/.config/alacritty/alacritty.toml ~/sayna-config/alacritty.toml

# p10k
cp ~/.p10k.zsh ~/sayna-config/.p10k.zsh

# zsh
cp ~/.zshrc ~/sayna-config/.zshrc
cp ~/.zshrc.local ~/sayna-config/.zshrc.local

# TODO
# Neovim


# Tmux
cp ~/.config/tmux/tmux.conf ~/sayna-config/tmux.conf

# VsCode
cp ~/.config/Code/User/settings.json ~/sayna-config/vscode-settings.json

echo "Done writing config, dont forget to upload :)."
