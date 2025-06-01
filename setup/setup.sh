#!/bin/bash
# Sayna linux setup install script

HERE=$(pwd)/dotfiles
# must match .zshrc.local
XDG_CONFIG_HOME=$HOME/.config

# [fonts]
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
mkdir -p $XDG_CONFIG_HOME/alacritty
if test -f $XDG_CONFIG_HOME/alacritty/alacritty.toml; then
	echo "Alacritty config exists, not updated."
else
	cp -a $HERE/alacritty.toml $XDG_CONFIG_HOME/alacritty/alacritty.toml
	curl -LO --output-dir $XDG_CONFIG_HOME/alacritty https://github.com/catppuccin/alacritty/raw/main/catppuccin-mocha.toml
	echo "Added alacritty config."
fi

# [gdb]
mkdir -p $XDG_CONFIG_HOME/gdb
if test -f $XDG_CONFIG_HOME/gdb/gdbinit; then
	echo "gdb config exists, not updated."
else
	cp -a $HERE/gdbinit $XDG_CONFIG_HOME/gdb/gdbinit
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
	cp $HERE/.p10k.zsh ~/.p10k.zsh
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
	cp $HERE/.zshrc ~/.zshrc
	echo "Added zshrc config."
fi
if test -f ~/.zshrc.local; then
	echo "zshrc.local config exists, not updated."
else
	cp $HERE/.zshrc.local ~/.zshrc.local
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
if test -d $XDG_CONFIG_HOME/nvim; then
	echo "Layzvim config exists, not updated."
else
	cp -r $HERE/nvim $XDG_CONFIG_HOME/
	echo "Installed Lazyvim config."
fi

# Install NvChad
#if test -d $XDG_CONFIG_HOME/nvim; then
#  echo "NvChard already installed."
#else
#  git clone -b v2.0 https://github.com/NvChad/NvChad $XDG_CONFIG_HOME/nvim --depth 1
#fi

# [TMUX]
mkdir -p $XDG_CONFIG_HOME/tmux/tmux.conf
if test -f $XDG_CONFIG_HOME/tmux/tmux.conf; then
	echo "Tmux config exists, not updated."
else
	cp $HERE/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf
	echo "Added Tmux config."
fi

# [VSCODE]
mkdir -p $XDG_CONFIG_HOME/Code/User/
if test -f ~/sayna-config/vscode-settings.json; then
	echo "VsCode config exists, not updated."
else
	# -a maintains permission, not sure if needed
	cp -a $HERE/vscode-settings.json $XDG_CONFIG_HOME/Code/User/settings.json
	echo "Added VsCode config."
fi

echo "Done installing Sayna's config :)."
