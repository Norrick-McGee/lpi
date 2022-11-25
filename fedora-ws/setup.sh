#!/bin/bash

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Non-free sound and video codecs useful for watching youtube
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate sound-and-video

sudo dnf install neovim steam -y

# Enable Docker Daemon
sudo dnf install docker -y 
sudo systemctl enable docker
sudo systemctl start docker

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp ../nvim ~/.config
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

flatpak install com.discordapp.Discord -y
flatpak install spotify -y 



