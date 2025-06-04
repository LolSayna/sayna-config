#!/bin/bash
# Install script for my dotfiles

CONF="$HOME/sayna-config/dotfiles"

# [PATHS]
# NAME - SOURCE - DESTINATION
paths=( 
    # Files
    "Alacritty $CONF/alacritty.toml $XDG_CONFIG_HOME/alacritty/alacritty.toml"
    "Zshenv $CONF/.zshenv $HOME/.zshenv"
    "Zshrc $CONF/zsh/.zshrc $XDG_CONFIG_HOME/zsh/.zshrc"
    "Zshrc-local $CONF/zsh/.zshrc.local $XDG_CONFIG_HOME/zsh/.zshrc.local"
    "P10k $CONF/zsh/.p10k.zsh $XDG_CONFIG_HOME/zsh/.p10k.zsh"
    "Tmux $CONF/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf"
    "Code-Settings $CONF/code/settings.json $XDG_CONFIG_HOME/Code/User/settings.json"
    "Code-Keybindings $CONF/code/keybindings.json $XDG_CONFIG_HOME/Code/User/keybindings.json"
    # Folders (copy files inside folder)
    "Neovim $CONF/nvim/. $XDG_CONFIG_HOME/nvim/."
    "Gdbinit $CONF/gdb/. $XDG_CONFIG_HOME/gdb/."    # only 1 file, but it has no file extension
    )
echo "Found ${#paths[@]} config files."

# [FUNCTIONS]
usage() {
    echo "Usage: $0 [-write] [-read] [-overwrite]"
}
write_config() {
    for file in "${paths[@]}"
    do
        IFS=' ' read -r name source destination <<< "$file"
        if test -e $destination; then
            echo "$name exists, not updated."
        else 
            mkdir -p $destination
            cp -r $source $destination
            echo "Wrote $name to $destination ."
        fi
    done
}
overwrite() {
    for file in "${paths[@]}"
    do
        IFS=' ' read -r name source destination <<< "$file"
        mkdir -p $destination
        cp -r $source $destination
        echo "Overwrite $name to $destination ."
    done
}
read_config() {
    for file in "${paths[@]}"
    do
        IFS=' ' read -r name source destination <<< "$file"
        if [ ! -e $source ]; then
            mkdir -p $source
        fi
        cp -r $destination $source
        echo "Read $name to $source ."
    done
}

# [PARSER]
if [ $# -eq 0 ];then
    usage
    exit 0
fi
while [[ $# -gt 0 ]]; do
    arg="$1"
    case $arg in
        -write)
            write_config
            shift
            ;;
		-read)
            read_config
            shift
            ;;
		-overwrite)
            overwrite
            shift
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo "Unknown option: $arg"
            usage
            exit 1
            ;;
    esac
done
