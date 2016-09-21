sudo apt-get update
sudo apt-get -y install ssh zsh nodejs build-essential git

# -------------------------------------
# Reboot management
# -------------------------------------
if [[ -f .doom_install.tmp ]]; then
# After marshmallow is installed, the chip is rebooted. 
# This is when Doom is installed.
    cd $HOME/dotfiles
     chmod +x ./doom-setup.sh
    ./doom-setup.sh
    rm -f .doom_install.tmp
else
    # -------------------------------------
    # Git Configuration
    # -------------------------------------
    git config --global user.email = "superzadeh@outlook.com"
    git config --global user.name = "superzadeh"
    git config --global push.default simple
    
    # -------------------------------------
    # Bootstrap the dotfiles
    # -------------------------------------
    # Get the dotfiles
    git clone http://github/superzadeh/dotfiles
    cd $HOME/dotfiles
    chmod +x ./bootstrap.sh
    ./bootstrap.sh
    # Get Vundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    # Start VIM and install plugins
    vim +PluginInstall +qall
    
    # -------------------------------------
    # Install Mednafen
    # -------------------------------------
    cd $HOME/dotfiles
    chmod +x ./madfen-setup.sh
    ./madfen-setup.sh
    
    # -------------------------------------
    # Start Marshmallow's Pocket Home installation, thanks to https://gist.github.com/kevinkn/52a8fb5d670bfa40c766e5fb3c2a0696
    # -------------------------------------
    cd $HOME/dotfiles
    chmod +x ./marsh-setup.sh
    ./marsh-setup.sh
    echo "Rebooting now. You will need to rerun the script to finish the Installation."
    touch .doom_install.tmp
    reboot
fi
