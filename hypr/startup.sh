#!/bin/bash
hyprpaper&
sleep 5; # Mostly necesary for laptop to connect to wifi and finish any boot stuff
zapzap &

# This was a solution for when I had the issue of mic not working on boot. Uncomment if needed.
# wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 1;
# wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0;

# TODO: this doesnt work
hyprctl setcursor "Catppuccin Mocha Green" 24 &
gsettings set org.gnome.desktop.interface cursor-theme catppuccin-mocha-green-cursors &

ashell &