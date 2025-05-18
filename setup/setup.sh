#!/bin/bash
# Sayna linux setup install script

# [FONTS]
# tried JetBrainsMono Nerd Font, now its RobotoMonoNerdFont
if test -f ~/.local/share/fonts/RobotoMonoNerdFont-Regular.ttf; then
	echo "Fonts already installed."
else
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/RobotoMono.zip -O ~/Downloads/RobotoMono.zip
	unzip ~/Downloads/RobotoMono.zip -d ~/Downloads/RobotoMono
	mkdir -p ~/.local/share/fonts
	cp ~/Downloads/RobotoMono/RobotoMonoNerdFont{-Regular.ttf,-Bold.ttf,-Italic.ttf,-BoldItalic.ttf} ~/.local/share/fonts
	rm -dr ~/Downloads/RobotoMono*
fi

# [alacritty]
mkdir -p ~/.config/alacritty
if test -f ~/.config/alacritty/alacritty.toml; then
	echo "alacritty config exists, not updated."
else
	cp -a ~/sayna-config/alacritty.toml ~/.config/alacritty/alacritty.toml
	curl -LO --output-dir ~/.config/alacritty https://github.com/catppuccin/alacritty/raw/main/catppuccin-mocha.toml
	echo "Added alacritty config."
fi

# [gdb]
mkdir -p ~/.config/gdb
if test -f ~/.config/gdb/gdbinit; then
	echo "gdb config exists, not updated."
else
	cp -a ~/sayna-config/gdbinit ~/.config/gdb/gdbinit
	echo "Added gdb config."
fi

# [P10K]
if test -d ~/powerlevel10k; then
	echo "Powerlevel10k already installed."
else
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
	echo "Installed Powerlevel10k."
fi
if test -f ~/.p10k.zsh; then
	echo "p10k config exists, not updated."
else
	cp ~/sayna-config/.p10k.zsh ~/.p10k.zsh
	echo "Added p10k config."
fi

# [ZSH]
if test -d ~/.zsh/zsh-autosuggestions; then
	echo "zsh-autosuggestions already installed."
else
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
	echo "Installed zsh-autosuggestions."
fi
if test -f ~/.zshrc; then
	echo "zshrc config exists, not updated."
else
	# Config zsh based on "wget -O .zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc"
	cp ~/sayna-config/.zshrc ~/.zshrc
	echo "Added zshrc config."
fi
if test -f ~/.zshrc.local; then
	echo "zshrc.local config exists, not updated."
else
	cp ~/sayna-config/.zshrc.local ~/.zshrc.local
	echo "Added zshrc.local config."
fi

# [NEOVIM]
# TODO add tmux plugin there vim-tmux-navigator
# Install Neovim 0.9, since apt includes older version. Alias in .zshrc is used to call "nvim".
if test -d ~/neovim; then
	echo "0.9 nvim already installed."
else
	mkdir -p ~/neovim
	wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -O ~/neovim/nvim.appimage
	chmod u+x ~/neovim/nvim.appimage
	~/neovim/nvim.appimage --appimage-extract
	mv squashfs-root ~/neovim
fi
# Install Lazyvim
if test -d ~/.config/nvim; then
	echo "Layzvim config exists, not updated."
else
	cp -r ~/sayna-config/nvim ~/.config/
	echo "Installed Lazyvim config."
fi

# Install NvChad
#if test -d ~/.config/nvim; then
#  echo "NvChard already installed."
#else
#  git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
#fi

# [TMUX]
mkdir -p ~/.config/tmux/tmux.conf
if test -f ~/.config/tmux/tmux.conf; then
	echo "Tmux config exists, not updated."
else
	cp ~/sayna-config/tmux.conf ~/.config/tmux/tmux.conf
	echo "Added Tmux config."
fi

# [VSCODE]
mkdir -p ~/.config/Code/User/
if test -f ~/sayna-config/vscode-settings.json; then
	echo "VsCode config exists, not updated."
else
	# -a maintains permission, not sure if needed
	cp -a ~/sayna-config/vscode-settings.json ~/.config/Code/User/settings.json
	echo "Added VsCode config."
fi

echo "Done installing Sayna's config :)."
