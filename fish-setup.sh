sudo apt-get install fish python3-dev python3-pip -y

curl -L http://get.oh-my.fish | fish

sudo -H pip3 install thefuck
echo 'thefuck --alias | source' > ~/.config/fish/config.fish
