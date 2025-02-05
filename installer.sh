#!/bin/bash

# Install official packages
sudo pacman -S --needed - < pkglist.txt

# Install yay (AUR helper) if not present
if ! command -v yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi

# Install AUR packages
yay -S --needed - < aurpkglist.txt
