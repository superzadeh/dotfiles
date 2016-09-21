# -------------------------------------
# Install Mednafen
# -------------------------------------
sudo apt-get install mednafen libsdl2-dev
# Run the app once to allow it to create its config
timeout 15s mednafen
sed -i 's/video.driver opengl/video.driver sdl/g' /home/chip/.mednafen/mednafen-09x.cfg

# Configure GBA
sed -i 's/gba.xscalefs 1.000000/gba.xscalefs 2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gba.yscalefs 1.000000/gba.yscalefs  2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gba.stretch aspect_mult2/gba.stretch full/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gba.yres 0/gba.yres 272/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gba.xres 0/gba.xres 480/g' /home/chip/.mednafen/mednafen-09x.cfg

# Configure GBC
sed -i 's/gb.xscalefs 1.000000/gb.xscalefs 2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gb.yscalefs 1.000000/gb.yscalefs  2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gb.stretch aspect_mult2/gb.stretch aspect/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gb.yres 0/gb.yres 272/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/gb.xres 0/gb.xres 480/g' /home/chip/.mednafen/mednafen-09x.cfg

# Configure SNES
sed -i 's/snes.xscalefs 1.000000/snes.xscalefs 2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/snes.yscalefs 1.000000/snes.yscalefs  2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/snes.stretch aspect_mult2/snes.stretch full/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/snes.yres 0/snes.yres 272/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/snes.xres 0/snes.xres 480/g' /home/chip/.mednafen/mednafen-09x.cfg

# Configure NES
sed -i 's/nes.xscalefs 1.000000/nes.xscalefs 2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/nes.yscalefs 1.000000/nes.yscalefs  2.000000/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/nes.stretch aspect_mult2/nes.stretch aspect/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/nes.yres 0/nes.yres 272/g' /home/chip/.mednafen/mednafen-09x.cfg
sed -i 's/nes.xres 0/nes.xres 480/g' /home/chip/.mednafen/mednafen-09x.cfg

# -------------------------------------
# Mednafen GUI
# -------------------------------------
cd
mkdir roms
cd roms
mkdir gba
mkdir gbc
wget -O fileName.gba http://linkToFile.gba
sudo apt-get install zenity
cd
wget -O medGui.sh https://gist.githubusercontent.com/superzadeh/66bf8b9066b985e7ddcc90315f5eb9b6/raw/456aff9cd524746d17c09cfd58f7db92f7afc216/medGui.sh
chmod +x medGui.sh
