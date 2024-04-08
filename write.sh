#bin/bash
# Save current dotfile configuration to this repository - 23.02.2024

# alacritty
cp ~/.config/alacritty/alacritty.yml ~/sayna-config/alacritty.yml

# zsh
cp ~/.zshrc ~/sayna-config/.zshrc

# p10k
cp ~/.p10k.zsh ~/sayna-config/.p10k.zsh

# VsCode
cp ~/.config/Code/User/settings.json ~/sayna-config/vscode-settings.json

echo "Done writing config, dont forget to upload :)."
