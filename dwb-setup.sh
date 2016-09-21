# Based on https://github.com/SteveMcGrath/chipbuild

BROWSER="dwb"
# Now lets install the software that we want.
sudo apt-get -y install openssh-client\
                        openssh-server\
                        irssi\
                        dnsutils\
                        moc\
                        $BROWSER
                        
# If the browser is set to dwb, then we will want to
# setup the configuration file for dwb.
if [ "$BROWSER" == "dwb" ];then
    
    # If the directory doesn't exist, then lets create it.
    if [ ! -d "$HOME/.config/dwb" ];then
        mkdir -p $HOME/.config/dwb
    fi

    # Next lets go ahead and download the dwb config file
    # that seems to work well with the PocketCHIP
    wget -qO ~/.config/dwb/settings https://raw.githubusercontent.com/SteveMcGrath/chipbuild/master/configs/dwb-settings
fi
