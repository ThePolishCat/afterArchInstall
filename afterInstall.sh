#!/bin/bash

# Copy the .local directory to the home directory
cp -r .local $HOME/

# Copy the .p10k.zsh file to the home directory
cp .p10k.zsh $HOME/

# Initialize the Pacman keyring
sudo pacman-key --init

# Receive and sign a key for the Pacman package manager
sudo pacman-key --recv-keys 2007FD1D74C35228EE40D0CCB91C66EF5E2EE34D
sudo pacman-key --lsign-key 2007FD1D74C35228EE40D0CCB91C66EF5E2EE34D

# Copy the etc directory to the root directory
sudo cp -r etc /

# Update Pacman package databases and install required packages
sudo pacman -Syy --noconfirm zsh yay nerd-fonts lsd bat tldr archlinux-wallpaper

# Change the default shell to zsh
chsh -s /bin/zsh

# Remove the existing .zshrc file
rm $HOME/.zshrc

# Install zimfw (Zsh plugin manager)
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# Copy the .zshrc file to the home directory
cp .zshrc $HOME/

# Add Powerlevel10k to zimfw configuration
echo 'zmodule romkatv/powerlevel10k --use degit' >> $HOME/.zimrc

# Install zimfw modules
zimfw install

# Set the KDE Plasma wallpaper to the Arch Linux conference image
qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript '
var allDesktops = desktops();
for (i=0;i<allDesktops.length;i++) 
{
    d = allDesktops[i];
    d.wallpaperPlugin = "org.kde.image";
    d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General");
    d.writeConfig("Image", "file:///usr/share/backgrounds/archlinux/conference.png")
}
'
