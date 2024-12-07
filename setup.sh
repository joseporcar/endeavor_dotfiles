#!/bin/bash

sudo pacman -S fastfetch kitty fish rofi hyprland waybar hyprpaper tlp ttf-jetbrains-mono-nerd;

yay -S zapzap hyprshot visual-studio-code-bin;

sudo sudo systemctl enable tlp.service;
sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket;
cp tlp.conf /etc;

cp terminal/kitty.conf ~/.config/kitty/kitty.conf
cp terminal/fish.conf 

cp -r hypr/ ~/.config;

mkdir -p ~/.local/share/rofi/themes/
cp rofi/themes/* ~/.local/share/rofi/themes
mkdir ~/.config/rofi
cp rofi/config.rasi ~/.config/rofi

flatpak install io.github.zen_browser.zen vesktop;
chsh -s /usr/bin/fish



