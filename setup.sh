sudo apt-get update
sudo apt-get install ssh zsh nodejs build-essential git

# -------------------------------------
# Reboot management
# -------------------------------------
if [[ -f .doom_install.tmp ]]; then
    doom
    rm -f .doom_install.tmp
fi

# -------------------------------------
# Marshmallow and Doom installation, thanks to https://gist.github.com/kevinkn/52a8fb5d670bfa40c766e5fb3c2a0696
# -------------------------------------
function marsh(){
    mkdir ~/.pocket-home/
    for i in ~/.pocket-home/version ~/.pocket-home/package.txt ~/.pocket-home/link ~/.pocket-home/.version
        do touch $i && chmod +w $i
    done
    echo 'Updating apt...'
    sudo apt update -q4
    echo 'Downloading new package link'
    wget  -O ~/.pocket-home/package.txt 'https://drive.google.com/uc?export=download&id=0B1jRc4IqT9kiSVVIOE8wd2w4Zkk' &&\
    echo 'Checking if new version is available'
    cat ~/.pocket-home/package.txt | head -1 > ~/.pocket-home/version
    cat ~/.pocket-home/package.txt | tail -1 > ~/.pocket-home/link
    (diff ~/.pocket-home/version ~/.pocket-home/.version && echo 'Already up-to-date.') || \
        (echo 'Updating...' && \
        mkdir -p ~/.pocket-home/ && \
        cp ~/.pocket-home/version ~/.pocket-home/.version &&\
        rm -f ~/.pocket-home/package.deb && \
        wget  -O ~/.pocket-home/package.deb -i ~/.pocket-home/link && \
        sudo dpkg -i ~/.pocket-home/package.deb && \
        echo 'Installation finished.')
    echo "Rebooting now. You will need to rerun the script to finish the Installation."
    touch .doom_install.tmp
    sudo telinit 6
}

function doom(){
    echo "Installing DOOM..."
    sudo apt install prboom doom-wad-shareware -q4 -y
    echo "Making sure we are in the right place:"
    cd /home/chip
    wget  -O Doom.png http://icons.iconarchive.com/icons/3xhumed/mega-games-pack-26/256/Doom-1-icon.png
    printf 'Here is what you need to add the new Icon within settings:\n
    \tName: Doom\n
    \tIcon Path: /home/chip/Doom.png\n
    \tCommand: prboom\n'
}

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
cd dotfiles
# Backup previous dotfiles and create symlinks to the dotfiles
./bootstrap.sh
# Get Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Start VIM and install plugins
vim +PluginInstall +qall

# -------------------------------------
# Install Mednafen
# -------------------------------------
sudo apt-get install mednafen libsdl2-dev
# Run the app once to allow it to create its config
timeout 15s mednafen
sed -i 's/video.driver opengl/video.driver sdl/g' /home/chip/.mednafen/mednafen-09x.cfg

# Configure GBA
sed -i 's/gba.xscalefs 1.000000/gba.xscalefs 2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gba.yscalefs 1.000000/gba.yscalefs  2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gba.stretch aspect_mult2/gba.stretch full/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gba.yres 0/gba.yres 272/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gba.xres 0/gba.xres 480/g' /home/chip/.mednafen/mednafen-09x.cfg

# Configure GBC
sed -i 's/gb.xscalefs 1.000000/gb.xscalefs 2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gb.yscalefs 1.000000/gb.yscalefs  2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gb.stretch aspect_mult2/gb.stretch aspect/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gb.yres 0/gb.yres 272/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gb.xres 0/gb.xres 480/g' /home/chip/.mednafen/mednafen-09x.cfg

# Configure SNES
sed -i 's/snes.xscalefs 1.000000/snes.xscalefs 2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/snes.yscalefs 1.000000/snes.yscalefs  2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/snes.stretch aspect_mult2/snes.stretch full/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/snes.yres 0/snes.yres 272/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/snes.xres 0/snes.xres 480/g' /home/chip/.mednafen/mednafen-09x.cfg

# Configure NES
sed -i 's/nes.xscalefs 1.000000/nes.xscalefs 2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/nes.yscalefs 1.000000/nes.yscalefs  2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/nes.stretch aspect_mult2/nes.stretch aspect/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/nes.yres 0/nes.yres 272/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/nes.xres 0/nes.xres 480/g' /home/chip/.mednafen/mednafen-09x.cfg

# -------------------------------------
# Mednafen GUI
# -------------------------------------
cd
mkdir roms
cd roms
mkdir gba
mkdir gbc
wget -O fileName.gba http://linkToFile.gba
sudo apt-get install zenity
cd
wget -O medGui.sh https://gist.githubusercontent.com/superzadeh/66bf8b9066b985e7ddcc90315f5eb9b6/raw/456aff9cd524746d17c09cfd58f7db92f7afc216/medGui.sh
chmod +x medGui.sh

# -------------------------------------
# Start Marshmallow's Pocket Home installation
# -------------------------------------
marsh()
