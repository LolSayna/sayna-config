#!/bin/bash
# Sayna linux setup install script

OVERWRITE=true

HERE="$(pwd)/dotfiles"
DOWNLOADS="$HOME/Downloads"
# must match .zshrc.local
XDG_CONFIG_HOME="$HOME/.config"
XDG_DATA_HOME="$HOME/.local/share"	# install small programms here

# [Fonts]
# tried JetBrainsMono Nerd Font, now its RobotoMonoNerdFont
if test -f $XDG_DATA_HOME/fonts/RobotoMonoNerdFont-Regular.ttf; then
	echo "Fonts already installed."
else
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/RobotoMono.zip -O $DOWNLOADS/RobotoMono.zip
	unzip $DOWNLOADS/RobotoMono.zip -d $DOWNLOADS/RobotoMono
	mkdir -p $XDG_DATA_HOME/fonts
	cp $DOWNLOADS/RobotoMono/RobotoMonoNerdFont{-Regular.ttf,-Bold.ttf,-Italic.ttf,-BoldItalic.ttf} $XDG_DATA_HOME/fonts
	rm -dr $DOWNLOADS/RobotoMono*
fi

# [Alacritty]
mkdir -p $XDG_CONFIG_HOME/alacritty
l

# [Zsh]
# this is only file in homedir, and sets ZDOTDIR
if [ !$OVERWRITE ] || test -f $zHOME/.zshenv; then
	echo "Zshenv exists, not updated."
else
	cp $HERE/.zshenv $HOME/.zshenv
	echo "Added Zshenv config."
fi
mkdir -p $XDG_CONFIG_HOME/zsh
if [ !$OVERWRITE ] || test -f $XDG_CONFIG_HOME/zsh/.zshrc; then
	echo "Zshrc config exists, not updated."
else
	# Config zsh based on "wget -O .zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc"
	cp $HERE/.zshrc $XDG_CONFIG_HOME/zsh/.zshrc
	echo "Added zshrc config."
fi
if [ !$OVERWRITE ] || test -f $XDG_CONFIG_HOME/zsh/.zshrc.local; then
	echo "Zshrc.local config exists, not updated."
else
	cp $HERE/.zshrc.local $XDG_CONFIG_HOME/zsh/.zshrc.local
	echo "Added zshrc.local config."
fi
if [ !$OVERWRITE ] || test -f $XDG_CONFIG_HOME/zsh/.p10k.zsh; then
	echo "P10k config exists, not updated."
else
	cp $HERE/.p10k.zsh $XDG_CONFIG_HOME/zsh/.p10k.zsh
	echo "Added p10k config."
fi
# [P10K]
if test -d $XDG_DATA_HOME/powerlevel10k; then
	echo "Powerlevel10k already installed."
else
	git clone --depth=1 https://github.com/romkatv/powerlevel10k $XDG_DATA_HOME/powerlevel10k
	echo "Installed Powerlevel10k."
fi
# [Zsh-autosuggestions]
if test -d $XDG_DATA_HOME/zsh-autosuggestions; then
	echo "Zsh-autosuggestions already installed."
else
	git clone https://github.com/zsh-users/zsh-autosuggestions $XDG_DATA_HOME/zsh-autosuggestions
	echo "Installed zsh-autosuggestions."
fi

# [Gdb]
mkdir -p $XDG_CONFIG_HOME/gdb
if [ !$OVERWRITE ] || test -f $XDG_CONFIG_HOME/gdb/gdbinit; then
	echo "Gdb config exists, not updated."
else
	cp -a $HERE/gdbinit $XDG_CONFIG_HOME/gdb/gdbinit
	echo "Added gdb config."
fi

# # [NEOVIM]
# # TODO add tmux plugin there vim-tmux-navigator
# # Install Neovim 0.9, since apt includes older version. Alias in .zshrc is used to call "nvim".
# if test -d ~/neovim; then
# 	echo "0.9 nvim already installed."
# else
# 	mkdir -p ~/neovim
# 	wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -O ~/neovim/nvim.appimage
# 	chmod u+x ~/neovim/nvim.appimage
# 	~/neovim/nvim.appimage --appimage-extract
# 	mv squashfs-root ~/neovim
# fi
# # Install Lazyvim
# if test -d $XDG_CONFIG_HOME/nvim; then
# 	echo "Layzvim config exists, not updated."
# else
# 	cp -r $HERE/nvim $XDG_CONFIG_HOME/
# 	echo "Installed Lazyvim config."
# fi

# # Install NvChad
# #if test -d $XDG_CONFIG_HOME/nvim; then
# #  echo "NvChard already installed."
# #else
# #  git clone -b v2.0 https://github.com/NvChad/NvChad $XDG_CONFIG_HOME/nvim --depth 1
# #fi

# # [TMUX]
# mkdir -p $XDG_CONFIG_HOME/tmux/tmux.conf
# if test -f $XDG_CONFIG_HOME/tmux/tmux.conf; then
# 	echo "Tmux config exists, not updated."
# else
# 	cp $HERE/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf
# 	echo "Added Tmux config."
# fi

# # [VSCODE]
# mkdir -p $XDG_CONFIG_HOME/Code/User/
# if test -f ~/sayna-config/vscode-settings.json; then
# 	echo "VsCode config exists, not updated."
# else
# 	# -a maintains permission, not sure if needed
# 	cp -a $HERE/vscode-settings.json $XDG_CONFIG_HOME/Code/User/settings.json
# 	echo "Added VsCode config."
# fi

echo "Done installing Sayna's config :)."
