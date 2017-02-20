sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install ssh nodejs build-essential git xclip htop vtop cmus fuck wavemon fish xinput-calibrator bluez-tools pulseaudio-module-bluetooth wget gnome-maplyer

# Bootstrap the dotfiles
./bootstrap.sh

# -------------------------------------
# Git Configuration
# -------------------------------------
git config --global user.email = "superzadeh@outlook.com"
git config --global user.name = "superzadeh"
git config --global push.default simple

# Fix keymapping for "minus" and "plus"
sed -i 's/keycode 82 = KP_Subtract underscore F11 KP_Subtract/keycode 82 = minus underscore F11 minus/g'  $HOME/.Xmodmap
sed -i 's/keycode 86 = KP_Add KP_Equal F12 KP_Add/keycode 86 = plus equal F12 plus/g' $HOME/.Xmodmap
xmodmap $HOME/.Xmodmap

# -------------------------------------
# Install Mednafen
# -------------------------------------
cd $HOME/dotfiles
chmod +x ./mednafen-setup.sh
./mednafen-setup.sh

# -------------------------------------
# Start Marshmallow's Pocket Home installation, thanks to https://gist.github.com/kevinkn/52a8fb5d670bfa40c766e5fb3c2a0696
# -------------------------------------
cd $HOME/dotfiles
chmod +x ./marsh-setup.sh
./marsh-setup.sh

# -------------------------------------
# Install Doom
# -------------------------------------
 cd $HOME/dotfiles
 chmod +x ./doom-setup.sh
./doom-setup.sh

# -------------------------------------
# Setup bluetooth
# -------------------------------------
wget https://bogdziewicz.xyz/files/pchip/bt.py
