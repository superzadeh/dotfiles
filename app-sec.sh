# Enable Port forwarding
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

# Install tools
sudo apt-get install tcpdump nmap  python-twisted-web

# Install SSL Strip
cd $HOME
mkdir -p app-sec
cd app-sec
git clone https://github.com/moxie0/sslstrip
python setup.py install
