# DotFiles For PocketCHIP

## What it does

Install all you need on a brand new PocketCHIP:

- Doom
- Marshmallow's PocketHome
- DWB (web-kit browser)
- Mednafen (emulator)
- ZSH & oh-my-zsh (with the theme [Nodeys](https://github.com/marszall87/nodeys-zsh-theme))
- VIM configured for web development (on going)
- Configure Git with my Username and Email 

## How to use 

```sh
sudo apt-get update
sudo apt-get install git
git clone https://github.com/superzadeh/dotfiles
cd dotfiles
git checkout chip
./setup.sh
```

You will need to reboot once and run the script again. 
I will add more logs and instructions in the scripts later.

## Todo

- [ ] Rename madfen to mednafen :)
- [ ] Remove the need to reboot
- [ ] Add GO and Go tools (httpstat)
- [ ] More Linux tools: htop/vtop, cmus, fuck, wavemon
- [ ] Allow users to choose their username/email for git
- [ ] Automate VIM build with python and Ruby support
- [ ] Add script to setup OpenTyrian
- [ ] Automate the icons creation in the launcher using jq to manipulate the ~/pocket-home/config.json
- [ ] Move git apt-get and clone inside the script, and change the instructions to simple wget/curl and run setup.sh
