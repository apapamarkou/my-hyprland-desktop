#!/bin/bash

sudo pacman -S --needed gtk4

# Create the directory and navigate to it
mkdir -p ~/Documents/development/builds
cd ~/Documents/development/builds

# Clone the repository
git clone https://github.com/geoffreybennett/alsa-scarlett-gui

# Navigate to the src directory
cd alsa-scarlett-gui/src

# Compile the code with 4 jobs
make -j4

# Install the compiled code
sudo make install

echo "Process completed successfully."
