# DotFiles For PocketCHIP

## What it does

Install all you need on a brand new PocketCHIP:

- Doom
- Marshmallow's PocketHome
- DWB (web-kit browser)
- Mednafen (emulator)
- ZSH & oh-my-zsh (with the theme [Nodeys](https://github.com/marszall87/nodeys-zsh-theme))
- VIM configured for web development (on going)
- Configure Git with my Username and Email (todo: add a prompt to let people change that)

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
