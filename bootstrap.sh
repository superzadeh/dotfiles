########## Variables  

dir=~/dotfiles                    		# dotfiles directory 
olddir=~/dotfiles_old             		# old dotfiles backup directory 
files=".bashrc .vimrc .vim .profile .zshrc"     # list of files/folders to symlink in homedir  

##########  

sudo apt-get update

# Shells
sudo apt-get install -y zsh fish python3-dev python3-pip
sudo -H pip3 install thefuck
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# create dotfiles_old in homedir 
echo "Creating $olddir for backup of any existing dotfiles in ~" 
mkdir -p $olddir 
echo "...done"  

# change to the dotfiles directory 
echo "Changing to the $dir directory" 
cd $dir 
echo "...done"  

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do     
    echo "Moving any existing dotfiles from ~ to $olddir"     
    mv ~/$file ~/dotfiles_old/     
    echo "Creating symlink to $file in home directory."     
    ln -s $dir/$file ~/$file 
done  

source ~/.bashrc 
source ~/.vimrc

# Handle fish.config
mv ~/.config/fish/config.fish ~/dotfiles_old/     
ln -s ~/$dir/fish.config ~/.config/fish/config.fish

# VIM
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Themes
wget https://raw.githubusercontent.com/marszall87/nodeys-zsh-theme/master/nodeys.zsh-theme ~/.oh-my-zsh/themes/nodeys.zsh-theme
