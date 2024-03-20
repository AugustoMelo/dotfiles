# Dotfiles

## Install

Just need to run the following command: `stow --target=$HOME */`

This configuration relies on nix and home-manager, to install you will need to install using the determina installer: 

1. `curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install`
1. Create a symbolic link for the home-manager folder under the
   $XDG_CONFIG_HOME (note that the XDG_CONFIG_HOME might not be available):
    `ln -s $HOME/workspace/personal/dotfiles/home-manager/ $HOME/.config/home-manager/`
1. Install home-manager by `nix run github:nix-community/home-manager -- switch --flake .`
1. `home-manager switch`

Just need to create a symbolic link to home-manager under $XDG_CONFIG_HOME and

### Notes

Regarding the vale, oto configure other spelling dictionaries besides english, will need to do:

1. [Configure spelling](https://vale.sh/docs/topics/styles/#spelling) 
1. [Download spelling (*.dic and *.aff)](https://github.com/wooorm/dictionaries/tree/main/dictionaries) 
