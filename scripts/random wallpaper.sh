#!/bin/bash

DIR="/home/yann/Holy-creation/wallpapers"
PIC=$(find "$DIR" -type f | shuf -n1)

dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript "string:
var Desktops = desktops();
for (i=0;i<Desktops.length;i++) {
    d = Desktops[i];
    d.wallpaperPlugin = 'org.kde.image';
    d.currentConfigGroup = Array('Wallpaper', 'org.kde.image', 'General');
    d.writeConfig('Image', 'file://$PIC');
}"