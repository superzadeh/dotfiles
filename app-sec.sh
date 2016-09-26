# Enable Port forwarding
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

# Install tools
sudo apt-get install bpython python python-dev python-pip tcpdump nmap python-twisted-web

# Install Python modules/libs
sudo pip install scapy argparse

# Install SSL Strip
cd $HOME
mkdir -p app-sec
cd app-sec
git clone https://github.com/moxie0/sslstrip
python ./sslstrip/setup.py install
