# Download go
cd /usr/local/
git clone https://go.googlesource.com/go
cd go
git checkout go1.7.1
cd src
./all.bash

# Set Go Path
sudo echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
sudo echo 'export GOROOT=$HOME/go' >> ~/.profile
sudo echo 'export PATH=$PATH:$GOROOT/bin' >> ~/.profile
mkdir -p Go
sudo echo 'export GOPATH=$HOME/Go' >> ~/.profile
source ~/.profile
