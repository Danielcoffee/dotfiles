#!/usr/bin/env bash

set -e
echo "Updating system..."
sudo pacman -Syu
echo "Installing..."
sudo pacman -S --needed - < packages.txt
yay -S --needed - < packages-aur.txt
echo "Done"
