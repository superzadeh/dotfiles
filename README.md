# DotFiles For PocketCHIP

## What it does

Install all you need on a brand new PocketCHIP:

- Doom
- Marshmallow's PocketHome
- VIM configured for development (on going)
- DWB (web-kit browser)
- Mednafen (emulator)
- ZSH & oh-my-zsh (with the theme [Nodeys](https://github.com/marszall87/nodeys-zsh-theme))

## How to use 

```sh
sudo apt-get update
sudo apt-get install git
git clone http://github/superzadeh/dotfiles
cd dotfiles
# Backup previous dotfiles and create symlinks to the dotfiles
./setup.sh
```

You will need to reboot once and run the script again. 
I will add more logs and instructions in the scripts later.
