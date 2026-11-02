#!/bin/bash

sudo pacman -Sy --needed go base-devel git rofi chromium awww sl cmatrix qt6-base qt6-tools qt6-declarative qtcreator qt5-base qt5-tools kvantum qt5ct btop neovim lazygit ripgrep fd tree-sitter-cli nerd-fonts nodejs npm docker docker-compose ttf-jetbrains-mono-nerd discord swaync xwayland-satellite flameshot telegram-desktop openvpn

mkdir -p ~/projects
cd ~/projects
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

git clone https://github.com/LazyVim/starter ~/.config/nvim

yay -Sy zen-browser-bin osc
