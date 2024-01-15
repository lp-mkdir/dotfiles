#!/bin/bash

# Get the current username
# CURRENT_USER=$USER
CURRENT_USER=luispacheco

# Neovim configuration
NVIM_SRC_DIR="/Users/$CURRENT_USER/.config/nvim"
NVIM_DEST_DIR="/Users/$CURRENT_USER/personal/dotfiles/config/nvim"

# Alacritty configuration
ALACRITTY_SRC_DIR="/Users/$CURRENT_USER/.config/alacritty"
ALACRITTY_DEST_DIR="/Users/$CURRENT_USER/personal/dotfiles/config/alacritty"

# Copy all files, folders, and subfolders for Neovim and Alacritty to the respective destinations in the GitHub repo
cp -R "$NVIM_SRC_DIR/"* "$NVIM_DEST_DIR/"
cp -R "$ALACRITTY_SRC_DIR/"* "$ALACRITTY_DEST_DIR/"

echo "Neovim configuration has been updated in $NVIM_DEST_DIR"
echo "Alacritty configuration has been updated in $ALACRITTY_DEST_DIR"
