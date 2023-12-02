#!/bin/bash
cp -r .local $HOME/
cp .p10k.zsh $HOME/
sudo pacman-key --init
sudo pacman-key --recv-keys 2007FD1D74C35228EE40D0CCB91C66EF5E2EE34D
sudo pacman-key --lsign-key 2007FD1D74C35228EE40D0CCB91C66EF5E2EE34D
sudo cp -r etc /
sudo pacman -Syy
sudo pacman -S  --noconfirm zsh yay nerd-fonts lsd bat tldr	
chsh -s /bin/zsh
rm $HOME/.zshrc
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
cp .zshrc $HOME/
echo zmodule romkatv/powerlevel10k --use degit >> $HOME/.zimrc
zimfw install

