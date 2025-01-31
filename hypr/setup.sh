#!/bin/bash

yay -S brightnessctl hyprland-meta-git hyprshot-git aylurs-gtk-shell-git rofi-wayland catppuccin-cursor-mocha rofi-calc dotools

systemctl --user enable --now hyprpolkitagent.service 
cp -r hypr/ ~/.config;

#cursor


mkdir -p ~/.local/share/rofi/themes/
cp rofi/themes/* ~/.local/share/rofi/themes
mkdir ~/.config/rofi
cp rofi/config.rasi ~/.config/rofi