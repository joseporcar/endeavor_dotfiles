#!/bin/bash

yay -S brightnessctl hyprland-meta-git hyprshot-git hyprshutdown aylurs-gtk-shell-git rofi-wayland catppuccin-cursor-mocha rofi-calc dotools ashell-git &&

systemctl --user enable --now hyprpolkitagent.service &&
cp -r hypr/ ~/.config &&

#cursor

# for dotools
groupadd -f input &&
sudo usermod -a -G input $USER &&

mkdir -p ~/.local/share/rofi/themes/ &&
cp rofi/themes/* ~/.local/share/rofi/themes &&
mkdir ~/.config/rofi &&
cp rofi/config.rasi ~/.config/rofi 