cd $HOME

# Download go
sudo curl -O https://storage.googleapis.com/golang/go1.7.1.linux-amd64.tar.gz
# Unzip and Install Go
sudo tar -xvf go1.7.1.linux-amd64.tar.gz
sudo mv go /usr/local

# Set Go Path
sudo echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
sudo echo 'export GOROOT=$HOME/go' >> ~/.profile
sudo echo 'export PATH=$PATH:$GOROOT/bin' >> ~/.profile
mkdir Go
sudo echo 'export GOPATH=$HOME/work' >> ~/.profile
source ~/.profile
