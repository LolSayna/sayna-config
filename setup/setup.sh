#!/bin/bash
# Sayna linux setup install script

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
if test -f $XDG_CONFIG_HOME/alacritty/alacritty.toml; then
	echo "Alacritty config exists, not updated."
else
	cp -a $HERE/alacritty.toml $XDG_CONFIG_HOME/alacritty/alacritty.toml
	curl -LO --output-dir $XDG_CONFIG_HOME/alacritty https://github.com/catppuccin/alacritty/raw/main/catppuccin-mocha.toml
	echo "Added alacritty config."
fi

# [Zsh]
# this is only file in homedir, and sets ZDOTDIR
if test -f $HOME/.zshenv; then
	echo "Zshenv exists, not updated."
else
	cp $HERE/.zshenv $HOME/.zshenv
	echo "Added Zshenv config."
fi
mkdir -p $XDG_CONFIG_HOME/zsh
if test -f $XDG_CONFIG_HOME/zsh/.zshrc; then
	echo "Zsh config exists, not updated."
else
	# Config zsh based on "wget -O .zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc"
	cp -r $HERE/zsh/ $XDG_CONFIG_HOME/zsh/
	echo "Added zsh config."
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
	git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $XDG_DATA_HOME/zsh-autosuggestions
	echo "Installed zsh-autosuggestions."
fi

# [TMUX]
mkdir -p $XDG_CONFIG_HOME/tmux
if test -f $XDG_CONFIG_HOME/tmux/tmux.conf; then
	echo "Tmux config exists, not updated."
else
	cp $HERE/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf
	mkdir -p ~/.config/tmux/plugins/catppuccin
	git clone --depth=1 https://github.com/tmux-plugins/tpm $XDG_CONFIG_HOME/tmux/plugins/tpm
	git clone --depth=1 https://github.com/catppuccin/tmux.git $XDG_CONFIG_HOME/tmux/plugins/catppuccin
	$XDG_CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins
	echo "Added Tmux config."
fi

# [Layzvim]
# Install Lazyvim
if test -d $XDG_CONFIG_HOME/nvim; then
	echo "Layzvim config exists, not updated."
else
	cp -r $HERE/nvim $XDG_CONFIG_HOME/
	echo "Added Lazyvim config."
fi

# [VSCODE]
mkdir -p $XDG_CONFIG_HOME/Code/User/
if test -f $XDG_CONFIG_HOME/Code/User/settings.json; then
	echo "VsCode config exists, not updated."
else
	cp $HERE/code/settings.json $XDG_CONFIG_HOME/Code/User/
	cp $HERE/code/keybindings.json $XDG_CONFIG_HOME/Code/User/
	echo "Added VsCode config."
fi

# [Gdb]
mkdir -p $XDG_CONFIG_HOME/gdb
if test -f $XDG_CONFIG_HOME/gdb/gdbinit; then
	echo "Gdb config exists, not updated."
else
	cp -a $HERE/gdbinit $XDG_CONFIG_HOME/gdb/gdbinit
	echo "Added gdb config."
fi

echo "Done installing Sayna's config :)."
