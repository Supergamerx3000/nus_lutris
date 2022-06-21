#!/bin/bash
if zenity --question --ellipsize --title="Update Nitrox" \
    --text="Do you wish to update nitrox?\nThis may overwrite some seting in the Nitrox Launcher\n(such as Subnautica game folder)"
then
    {
        wget -O nitrox.zip https://github.com/SubnauticaNitrox/Nitrox/releases/download/1.5.0.1/Nitrox.1.5.0.1.zip
        echo 50
        unzip -o -q nitrox.zip -d "drive_c/Program Files/Nitrox/"
        echo 100
    } |\
        zenity --progress \
               --title="Updating..." \
               --text="Updating Nitrox" \
               --auto-kill \
               --auto-close \
               --percentage=0
    zenity --info --title="Update complete" --text="Nitrox has been updated"
fi
