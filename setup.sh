#!/bin/bash
# Sayna linux setup install script

# Install fonts - JetBrainsMono Nerd Font
if test -f ~/.local/share/fonts/JetBrainsMonoNerdFont-Regular.ttf; then
	echo "Fonts already installed."
else
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip -O ~/Downloads/JetBrainsMono.zip
	unzip ~/Downloads/JetBrainsMono.zip -d ~/Downloads/JetBrainsMono
	mkdir -p ~/.local/share/fonts
	cp ~/Downloads/JetBrainsMono/JetBrainsMonoNLNerdFontMono{-Regular.ttf,-Bold.ttf,-Italic.ttf,-BoldItalic.ttf} ~/.local/share/fonts
	rm -dr ~/Downloads/JetBrainsMono*
fi


# Config alacritty
mkdir -p ~/.config/alacritty
cp -a ~/sayna-config/alacritty.yml ~/.config/alacritty/alacritty.yml


# Install p10k
if test -d ~/powerlevel10k; then
	echo "Powerlevel10k already installed."
else
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
fi
# Config zsh based on "wget -O .zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc"
cp ~/sayna-config/.zshrc ~/.zshrc
# p10k
cp ~/sayna-config/.p10k.zsh ~/.p10k.zsh


# Install Neovim 0.9, since apt includes older version. Alias in .zshrc is used to call "nvim". 
if test -d ~/neovim; then
	echo "0.9 nvim already installed."
else
	mkdir ~/neovim
	wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -O ~/neovim/nvim.appimage
	chmod u+x ~/neovim/nvim.appimage
	~/neovim/nvim.appimage --appimage-extract
fi
# Install NvChad
if test -d ~/.config/nvim; then
	echo "NvChard already installed."
else
	git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
fi


echo "Done installing config :)."
