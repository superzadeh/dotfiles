sudo apt-get update
sudo apt-get -y install ssh zsh nodejs build-essential git xclip

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
    # Fix keymapping for "minus" and "plus" in zsh
    sed -i 's/keycode 82 = KP_Subtract underscore F11 KP_Subtract/keycode 82 = minus underscore F11 minus/g'  $HOME/.Xmodmap
    sed -i 's/keycode 86 = KP_Add KP_Equal F12 KP_Add/keycode 86 = plus equal F12 plus/g' $HOME/.Xmodmap
    xmodmap $HOME/.Xmodmap
    
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
