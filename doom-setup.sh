    echo "Installing DOOM..."
    sudo apt-get -y install prboom doom-wad-shareware
    echo "Making sure we are in the right place:"
    cd /home/chip
    wget  -O Doom.png http://icons.iconarchive.com/icons/3xhumed/mega-games-pack-26/256/Doom-1-icon.png
    printf 'Here is what you need to add the new Icon within settings:\n
    \tName: Doom\n
    \tIcon Path: /home/chip/Doom.png\n
    \tCommand: prboom\n'
