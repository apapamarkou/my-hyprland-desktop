# My Hyprland Desktop

This repo is my scripts to ignite a quick fresh Arch Linux install with Sway and Hyprland window managers. 

## System Features

- Interative installation script
- Automatic `yay` installation (on reqeust)
- Funcy `zsh` shell installation and config (on reqeust)
- Creating of a handy `update-grub` script (on reqeust)
- Selection of `nerd fonts` installation (on reqeust)
- Some tweaks for the pro-audio users (on reqeust)
- Automatic `Focusrite Control Panel` if you need it (on reqeust)
- Automatic enable Windows VST plugin support (on reqeust)
- Git configuration (on reqeust)
- Password asterisk feedback tweak (on reqeust)

## Desktop Features

- `sway` + `hyprland` - window managers
- `waybar` - Desktop bar
- `azote` - wallpaper manager
- `syawnc` - notifications panel
- `dex` - autostart applications support
- `autotiling` - auto deside tiling for new windows
- `aarchup` - updates notification
- `wlsunset` - night light on your location sunset
- `flameshot` - screenshots
- `nwg-drawer` - full screen application and file launcher/finder
- `swaylock` - a lock screen with blured background
- `qpwgraph` - an easy audio routing panel (pipewire)
- `pipewire-controller` - a tray icon to change audio samplerate and buffersize
- `appimage-integrator` - simply drop appimages to your "Applications" folder to automatic install/integrate in launchers or delete them to uninstall.
- `lxsession` - a lightweight session manager.

## How to start

### Install the latest Arch Linux

- Check out [releases page](https://archlinux.org/releng/releases/) and download the latest Arch Linux ISO.
- Make a bootable USB. A recommended method is making a [Ventoy](https://www.ventoy.net/en/download.html) enabled USB following the [instructions](https://www.ventoy.net/en/doc_start.html) and copy the downloaded ISO there.
- Run `archinstall` and choose a `desktop` type installation and `pipewire` as audio server.

### Installation

Install dependecies
```
sudo pacman -S --needed git
git clone https://github.com/apapamarkou/my-hyprland-desktop.git
cp -r my-hyprland-desktop/* ~/
cp -r my-hyprland-desktop/.* ~/
my-hyprland-desktop/setup.sh
```

# Disclimer

This repo is offered as it is with no warranty.
