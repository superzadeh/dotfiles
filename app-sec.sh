# Enable Port forwarding
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

# Install tools
sudo apt-get install bpython python python-dev python-pip tcpdump nmap python-twisted-web

# Install Python modules/libs
sudo pip install scapy argparse

# Install SSL Strip
cd $HOME
APPSEC = ""
mkdir $APPSEC
cd $HOME/$APPSEC
git clone https://github.com/moxie0/sslstrip
python $HOME/$APPSEC/sslstrip/setup.py install
