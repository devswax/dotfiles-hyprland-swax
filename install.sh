#!/bin/bash

echo "🔧 Mise à jour du système..."
sudo pacman -Syu

echo "📦 Installation des paquets via pacman..."
sudo pacman -S --needed \
  hyprland \
  hyprlock \
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
  fastfetch

echo "📦 Installation des paquets AUR via yay..."
yay -S --needed \
  spotify \
  flameshot-git

echo "✅ Tout est installé !"

