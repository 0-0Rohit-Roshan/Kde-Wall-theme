#!/bin/bash

cd ../../run/media/miku/File/wallpaper/

source "RenameToIntiger.sh"
img=$(sxiv *.jpg -o -q)
#echo $img
wal -i=$img -b=#000000 -n -q

#imgpath=/home/miku/Pictures/$img

cd ~
cat ~/Wallpaper.sh |tr 12345678 $img >~/wallpaper.sh
#echo "Your imgpath = $imgpath"
#cp -f ../Wallpaper.sh ../wallpaper.sh
#cat ../wallpaper.sh

source "wallpaper.sh"

notify-send "wallpaper set as $img and appropriate terminal color applied"

rm ~/wallpaper.sh

#Todo
#Move the wallpapers to the windows file system.
#Add more dynamicity in script to rename all jpg file in the directory to intiger to avoid incompatibility at tr command (check if a single renaming script can be run in multiple diectory by the main script.)
#Try to do it for Konsole.
#Acces it from any directory.
#Add a for loop to check and rename file.
