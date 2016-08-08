# DotFiles

## What does it do

Configure Bash (on ubuntu on Windows) for web development using VIM.

## How to use 

```sh
sudo apt-get isntall zsh
zsh
# Get the dotfiles
git clone http://github/superzadeh/dotfiles
cd dotfiles
# Backup previous dotfiles and create symlinks to the dotfiles
./bootstrap.sh
# Get Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Start VIM and install plugins
vim
:PluginInstall
```
