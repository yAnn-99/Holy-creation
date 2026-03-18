#!/bin/zsh
hyprctl hyprpaper unload all
WALLPAPERS=($(ls -d $HOME/Holy-creation/wallpapers/*))
WALLPAPERS+=($(ls -d $HOME/Holy-creation/wallpapers/*))
WALLPAPER=${WALLPAPERS[$RANDOM % ${#WALLPAPERS[@]}]}
hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ,"$WALLPAPER"   