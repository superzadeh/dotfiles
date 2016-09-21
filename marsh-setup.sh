mkdir ~/.pocket-home/
for i in ~/.pocket-home/version ~/.pocket-home/package.txt ~/.pocket-home/link ~/.pocket-home/.version
    do touch $i && chmod +w $i
done
echo 'Updating apt...'
sudo apt update
echo 'Downloading new package link'
wget  -O ~/.pocket-home/package.txt 'https://drive.google.com/uc?export=download&id=0B1jRc4IqT9kiSVVIOE8wd2w4Zkk' &&\
echo 'Checking if new version is available'
cat ~/.pocket-home/package.txt | head -1 > ~/.pocket-home/version
cat ~/.pocket-home/package.txt | tail -1 > ~/.pocket-home/link
(diff ~/.pocket-home/version ~/.pocket-home/.version && echo 'Already up-to-date.') || \
    (echo 'Updating...' && \
    mkdir -p ~/.pocket-home/ && \
    cp ~/.pocket-home/version ~/.pocket-home/.version &&\
    rm -f ~/.pocket-home/package.deb && \
    wget  -O ~/.pocket-home/package.deb -i ~/.pocket-home/link && \
    sudo dpkg -i ~/.pocket-home/package.deb && \
    echo 'Installation finished.')
echo "Rebooting now. You will need to rerun the script to finish the Installation."
touch .doom_install.tmp
reboot
