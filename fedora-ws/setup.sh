#!/bin/bash

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Non-free sound and video codecs useful for watching youtube
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
sudo dnf groupupdate sound-and-video -y

sudo dnf install neovim steam -y

# Enable Docker Daemon
sudo dnf install docker -y 
sudo systemctl enable docker
sudo systemctl start docker

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp -r ../nvim ~/.config
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

flatpak install com.discordapp.Discord -y
flatpak install spotify -y 

gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

