# Nix
There are 2 version of nix commands: old versions with `nix-CMD` and `nix CMD`.

There are different sources for nix inputs: the official nixpkgs links to [nixpkgs-unstable](https://github.com/NixOS/nixpkgs/tree/nixpkgs-unstable) OR alternativs are nixos-25.05 OR custom ones like luhsra/srapkgs ([see here for shortnames](https://github.com/NixOS/nixpkgs/tree/nixpkgs-unstable)); to search older packages [use this](https://lazamar.co.uk/nix-versions/)

TODO: unterschied release-25.05 vs nixos-25.05 vs nixpkgs-25.05-darwin (gibt es nur mit Mac suffix? oder nixpkgs-unstable)

## Setup
Install nix package manager via shell script [OfficalPage](https://nixos.org/download/)
- Verify install with `nix-shell -p nix-info --run "nix-info -m"` 

##  Install temporary packages
`nix-shell -p cowsay lolcat`
    - new version is `nix shell`, it keeps the user shell enviroment, but does not set `IN_NIX_SHELL`
- Add packages to user environment: `nix-env -i NAME`
- Cleanup: `nix-store --gc`



## Flakes
To use flakes append to all cmds: `--experimental-features 'nix-command flakes'` or append `experimental-features = nix-command flakes` to `~/.config/nix/nix.conf`

### Run an application
`nix run "nixpkgs#chromium"` runs a given flake for an application (starts it)

### Run a local folder with a Flake
`nix develop` needs a flake!(starts a new shell, as defined in the nix.lock file; how to keep current shell?)

### Use direnv
Dynamic enviroment variable loader, activated by existence of `.envrc` file in a folder

- Install direnv systemwide via nix (apt outdated): `nix-env -i direnv`
- Add to .zshrc: `eval "$(direnv hook zsh)"`
- In folder of the flake: `echo "use flake" > .envrc`
- Entering folder should start flake after a shell restart

#### Update the lock file of a given flake
`nix flake update` mostly usefull to pin the newest version of nixpkgs/nixos-unstable

#### Find which exact version of nixpkgs is locked
`nix flake metadata` Metadata einer flake anzeigen


## Python Pip Shellhock
```nix
shellHook = ''
    export VENV="nixvenv"
    if [ ! -d "$VENV" ]; then
        python3 -m venv "$VENV"
    fi
    . $VENV/bin/activate
    pip install versuchung
    '';
```
