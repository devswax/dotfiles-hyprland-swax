#!/bin/bash

echo "🔧 Updating the system..."
sudo pacman -Syu

echo "📦 Installing packages via pacman..."
sudo pacman -S --needed \
  hyprland \
  hyprlock \
  hyprpaper \
  hypridle \
  xdg-desktop-portal-hyprland \
  github-cli \
  waybar \
  wofi \
  kitty \
  starship \
  lsd \
  xorg-xwayland \
  neovim \
  playerctl \
  bluez \
  bluez-utils \
  python \
  mako \
  gtk3 \
  gtk4 \
  nautilus \
  fastfetch \
  grim \
  wl-clipboard

echo "📦 Installing AUR packages via yay..."
yay -S --needed \
  spotify \
  flameshot-git \
  nerd-fonts

echo "📁 Copying configuration files to \$HOME..."
mkdir -p "$HOME/Downloads" "$HOME/Pictures"
cp -r .bashrc .config .lock.sh install.sh wallpaper.png "$HOME/"
USER_NAME=$(basename $HOME)
sed -i "s|/home/user.name|/home/$USER_NAME|g" ~/.config/gtk-3.0/bookmarks

echo "✅ Everything is installed and the files have been copied!"

