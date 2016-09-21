sudo apt-get update
sudo apt-get install ssh zsh nodejs build-essential git

# -------------------------------------
# Reboot management
# -------------------------------------
if [[ -f .doom_install.tmp ]]; then
    cd /home/chip/dotfiles
    ./doom-setup.sh
    rm -f .doom_install.tmp
fi

# -------------------------------------
# Git Configuration
# -------------------------------------
git config --global user.email = "superzadeh@outlook.com"
git config --global user.name = "superzadeh
git config --global push.default simple

# -------------------------------------
# Bootstrap the dotfiles
# -------------------------------------
# Get the dotfiles
git clone http://github/superzadeh/dotfiles
cd /home/chip/dotfiles
./bootstrap.sh
# Get Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Start VIM and install plugins
vim +PluginInstall +qall

# -------------------------------------
# Install Mednafen
# -------------------------------------
cd /home/chip/dotfiles
./madfen.sh

# -------------------------------------
# Start Marshmallow's Pocket Home installation, thanks to https://gist.github.com/kevinkn/52a8fb5d670bfa40c766e5fb3c2a0696
# -------------------------------------
cd /home/chip/dotfiles
./marsh-setup.sh
