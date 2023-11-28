#!/bin/bash

# Get the current username
CURRENT_USER=$USER

# Neovim configuration
NVIM_SRC_DIR="/Users/$CURRENT_USER/code/dotfiles/nvim"
NVIM_DEST_DIR="/Users/$CURRENT_USER/.config/nvim"

# Alacritty configuration
ALACRITTY_SRC_DIR="/Users/$CURRENT_USER/code/dotfiles/alacritty"
ALACRITTY_DEST_DIR="/Users/$CURRENT_USER/.config/alacritty"

# Create destination directories if they don't exist
mkdir -p "$NVIM_DEST_DIR"
mkdir -p "$ALACRITTY_DEST_DIR"

# Copy all files, folders, and subfolders for Neovim and Alacritty
cp -R "$NVIM_SRC_DIR/"* "$NVIM_DEST_DIR/"
cp -R "$ALACRITTY_SRC_DIR/"* "$ALACRITTY_DEST_DIR/"

echo "Neovim configuration has been copied to $NVIM_DEST_DIR"
echo "Alacritty configuration has been copied to $ALACRITTY_DEST_DIR"
