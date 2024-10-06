#!/bin/bash

# Ask user with Yes as default
ask_user_default_yes() {
    clear
    read -p "$1 ([y]/n): " choice
    if [[ "$choice" != "y" && "$choice" != "Y" && "$choice" != "" ]]; then
        return 1 # Failure
    else
        return 0 # Success
    fi
}

# Ask user with No as default
ask_user_default_no() {
    read -p "$1 (y/[n]): " choice
    if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
        return 0 # Success
    else
        return 1 # Failure
    fi
}

sudo pacman -S --needed base-devel git curl

~/.local/bin/setup/1-InstallMyYay.sh

~/.local/bin/setup/2-InstallMyNerdFonts.sh

~/.local/bin/setup/3-InstallMyPackages.sh

~/.local/bin/setup/12-CreateMyUpdateGrub.sh

if ask_user_default_yes "Are you Greek?"; then
    ~/.local/bin/setup/4-AddMyGreekLanguage.sh
fi

if ask_user_default_yes "Are you a pro audio user?"; then
    ~/.local/bin/setup/5-ConfigureMyLimits.sh
    ~/.local/bin/setup/6-InstallMyFocusriteControlPanel.sh
    ~/.local/bin/setup/7-SetupMyWine.sh
    # install muse-sounds-manager
    wget -qO- https://raw.githubusercontent.com/apapamarkou/muse-sounds-manager-generic-installer/main/install_muse_sounds_manager.sh | bash
    sudo pacman -S --noconfirm --needed dragonfly-reverb-lv2 carla guitarix reapack reaper sws wine-staging winetricks yabridge yabridgectl musescore
fi

if ask_user_default_yes "Are you a terminal fun?"; then
    ~/.local/bin/setup/10-MyZshSetup.sh
fi

if ask_user_default_yes "Do you need Flatpak support?"; then
    sudo pacman -S --needed --noconfirm flatpak
fi

if ask_user_default_yes "Do you need Snap support?"; then
    yay -S --needed --noconfirm snapd
fi

if ask_user_default_yes "Do you need java development support?"; then
    sudo pacman -S --needed --noconfirm jdk17-openjdk openjdk17-doc openjdk17-src maven instellij-idea-community-edition
fi

if ask_user_default_yes "Are you coding or using git?"; then
    yay -S --needed --noconfirm visual-studio-code-bin
    ~/.local/bin/setup/8-ConfigMyGit.sh
fi

if ask_user_default_yes "Are you editing photos?"; then
    sudo pacman -S --needed --noconfirm gimp inkscape
    yay -S --needed xnconvert
fi

if ask_user_default_yes "Are you editing videos?"; then
    sudo pacman -S --needed --noconfirm kdenlive obs-studio
fi

if ask_user_default_yes "Do you like to see asterics as you type password?"; then
    ~/.local/bin/setup/9-ShowMyPasswordFeedback.sh
fi

if ask_user_default_yes "Would you like to switch displaymanager to MyGreeter?"; then
    ~/.local/bin/setup/11-SetupMyGreeter.sh
fi

# instell pipewire controller
QT_PLATFORM=6 wget -qO- https://raw.githubusercontent.com/apapamarkou/pipewire-controller/main/src/pipewire-controller-git-install | bash

# install appimage integration
wget -qO- https://raw.githubusercontent.com/apapamarkou/appimage-integrator/main/src/appimage-integrator-install-git | bash

echo "Updating locate database.."
sudo updatedb

clear
echo "Setup finished. Enjoy!


