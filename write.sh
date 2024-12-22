#bin/bash
# Save current dotfile configuration to this repository - 23.02.2024

# alacritty
cp ~/.config/alacritty/alacritty.toml ~/sayna-config/alacritty.toml

# zsh
cp ~/.zshrc ~/sayna-config/.zshrc
cp ~/.zshrc.local ~/sayna-config/.zshrc.local

# p10k
cp ~/.p10k.zsh ~/sayna-config/.p10k.zsh

# VsCode
cp ~/.config/Code/User/settings.json ~/sayna-config/vscode-settings.json

# Tmux
cp ~/.config/tmux/tmux.conf ~/sayna-config/tmux.conf

echo "Done writing config, dont forget to upload :)."
