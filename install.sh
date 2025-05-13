#!/bin/bash

set -e

PACKAGES=(
    base-devel curl stow nim npm go man
    hyprland hyprpaper hyprlock hyprpicker
    vim neovim wl-clipboard kitty lsd python-pillow fastfetch btop ranger starship zathura zathura-pdf-poppler pulsemixer
    waybar wofi nautilus
    grim slurp
    pavucontrol
    fcitx5-im fcitx5-chewing fcitx5-qt fcitx5-gtk fcitx5-chinese-addons
    noto-fonts-cjk noto-fonts-emoji
    firefox discord
)

sudo pacman -Syu --noconfirm "${PACKAGES[@]}"

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install yay
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

yay -S pfetch spotify vesktop --noconfirm

# build nitch
cd ~
git clone https://github.com/ronit1996/nitch.git
cd nitch
nimble build

# install & build tidal-hifi
cd ~
git clone https://github.com/Mastermindzh/tidal-hifi.git
cd tidal-hifi
npm install

# remove source
cd ~
rm -rf yay nitch tidal-hifi

# copy dotfiles
cd ~/dotfiles
stow --adopt .
git restore .
rm ~/install.sh

echo "Finished!"
