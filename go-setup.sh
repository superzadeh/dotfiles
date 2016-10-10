cd $HOME

# Download go
sudo curl -O https://storage.googleapis.com/golang/go1.7.1.linux-armv6l.tar.gz
# Unzip and Install Go
sudo tar -xvf go1.7.1.linux-armv6l.tar.gz
sudo rm -rf /usr/local/go
sudo mv go /usr/local

# Set Go Path
sudo echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
sudo echo 'export GOROOT=$HOME/go' >> ~/.bashrc
sudo echo 'export PATH=$PATH:$GOROOT/bin' >> ~/.bashrc
mkdir -p Go
sudo echo 'export GOPATH=$HOME/Go' >> ~/.bashrc
source ~/.profile

# Cleanup
rm go1.7.1.linux-armv6l.tar.gz
