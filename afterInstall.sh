#!/bin/bash
cp -r .local $HOME/
cp .p10k.zsh $HOME/
sudo pacman-key --init
sudo pacman-key --recv-keys 66576FE3626A02F272FF2933330E1ADB4E5E62AA
sudo pacman-key --lsign-key 66576FE3626A02F272FF2933330E1ADB4E5E62AA
sudo cp -r etc /
sudo pacman -Syy
sudo pacman -S  --noconfirm zsh yay nerd-fonts lsd bat tldr	
chsh -s /bin/zsh
rm $HOME/.zshrc
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
cp .zshrc $HOME/
echo zmodule romkatv/powerlevel10k --use degit >> $HOME/.zimrc
zimfw install

