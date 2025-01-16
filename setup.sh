#!/bin/bash

sudo pacman -S fastfetch kitty fish rofi waybar tlp ttf-jetbrains-mono-nerd nwg-look swaync qt5-wayland qt6-wayland brightnessctl rustup cheese;

yay -S hyprland-meta-git zapzap hyprshot-git visual-studio-code-bin;

systemctl --user enable --now hyprpolkitagent.service
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

rustup default stable

flatpak install io.github.zen_browser.zen vesktop;
chsh -s /usr/bin/fish



