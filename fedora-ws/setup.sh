#!/bin/bash

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo dnf install neovim steam -y

#git clone --depth 1 https://github.com/wbthomason/packer.nvim\
#   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mkdir ~/.config/nvim
cp ~/init.lua ~/.config/nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

flatpak install com.discordapp.Discord -y
flatpak install spotify -y 



