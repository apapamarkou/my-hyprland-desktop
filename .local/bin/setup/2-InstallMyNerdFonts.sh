#!/bin/bash

# Define the base font directory
BASE_FONT_DIR="$HOME/.local/share/fonts"

# Create the base font directory if it doesn't exist
mkdir -p "$BASE_FONT_DIR"

# List of font URLs
font_urls="
  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Arimo.zip
  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/OpenDyslexic.zip
  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Tinos.zip
  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Ubuntu.zip
  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/UbuntuMono.zip
"

# Download, extract, and install each font
for url in $font_urls; do
  # Get the filename without the extension (e.g., Arimo, JetBrainsMono)
  font_name=$(basename "$url" .zip)
  
  # Define the target directory for this font
  FONT_DIR="$BASE_FONT_DIR/$font_name"
  
  # Create the directory
  mkdir -p "$FONT_DIR"
  
  # Download the zip file
  wget "$url" -O "/tmp/$font_name.zip"
  
  # Extract the zip file into the specific directory
  unzip "/tmp/$font_name.zip" -d "$FONT_DIR"
  
  # Remove the zip file after extraction
  rm "/tmp/$font_name.zip"
done

# Update the font cache
fc-cache -fv

