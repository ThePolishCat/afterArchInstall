#!/bin/bash
sudo pacman-key --init
sudo pacman-key --recv-keys 66576FE3626A02F272FF2933330E1ADB4E5E62AA
sudo pacman-key --lsign-key 66576FE3626A02F272FF2933330E1ADB4E5E62AA
sudo bash -c 'echo -e "[catRepo]\nServer = https://github.com/ThePolishCat/arch-custom-repo/raw/main/x86_64/" > /etc/pacman.conf'
sudo pacman -Syy
sudo pacman -S  --noconfirm zsh yay nerd-fonts
chsh -s /bin/zsh
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
echo zmodule romkatv/powerlevel10k --use degit >> .zimrc
zimfw install
