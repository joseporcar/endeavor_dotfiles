#!/bin/bash

sudo pacman -S fastfetch kitty fish tlp nwg-look qt5-wayland qt6-wayland rustup cheese &&

yay -S zapzap visual-studio-code-bin gtk-engine-murrine lxappearance colloid-catppuccin-gtk-theme-git helix-git otf-ibm-plex &&

# GTK theme
cp -r /usr/share/themes/Colloid-Dark-Compact-Catppuccin/ .config/gtk-4.0/ &&

sudo chmod a+x ./hypr/setup.sh && ./hypr/setup.sh &&

# TLP
sudo sudo systemctl enable tlp.service &&
sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket &&
sudo cp tlp.conf /etc &&

cp terminal/kitty.conf ~/.config/kitty/kitty.conf &&
cp terminal/fish.conf &&

rustup default stable &&

flatpak install io.github.zen_browser.zen vesktop &&
chsh -s /usr/bin/fish



