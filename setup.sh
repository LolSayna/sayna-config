#!/bin/bash
# Sayna linux setup install script - 11.02.2024
# check https://github.com/LolSayna/sayna-config#prerequisites

# Install fonts - JetBrainsMono Nerd Font
if test -f ~/.local/share/fonts/JetBrainsMonoNerdFont-Regular.ttf; then
	echo "Fonts already installed."
else
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip -O ~/Downloads/JetBrainsMono.zip
	unzip ~/Downloads/JetBrainsMono.zip -d ~/Downloads/JetBrainsMono
	mkdir -p ~/.local/share/fonts
	cp ~/Downloads/JetBrainsMono/JetBrainsMonoNerdFont{-Regular.ttf,-Bold.ttf,-Italic.ttf,-BoldItalic.ttf} ~/.local/share/fonts
	rm -dr ~/Downloads/JetBrainsMono*
fi


# Setup alacrity terminal
mkdir -p ~/.config/alacritty
cp -a ~/sayna-config/alacritty.yml ~/.config/alacritty/alacritty.yml

echo "Done :)."
