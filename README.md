# My Hyprland Desktop

This repo contains my scripts to quickly set up a fresh Arch Linux installation with Sway and Hyprland window managers.

## System Features

- Interactive installation script
- Automatic `yay` installation (on request)
- Fancy `zsh` shell installation and configuration (on request)
- Creation of a handy `update-grub` script (on request)
- Option to install `nerd fonts` (on request)
- Tweaks for pro-audio users (on request)
- Automatic `Focusrite Control Panel` setup (on request)
- Automatic enablement of Windows VST plugin support (on request)
- Git configuration (on request)
- Password asterisk feedback tweak (on request)

## Desktop Features

- `sway` + `hyprland` - window managers
- `waybar` - desktop bar
- `azote` - wallpaper manager
- `swaync` - notifications panel
- `dex` - autostart applications support
- `autotiling` - auto-decide tiling for new windows
- `aarchup` - updates notification
- `wlsunset` - night light based on your location's sunset
- `flameshot` - screenshots tool
- `nwg-drawer` - full-screen application and file launcher/finder
- `swaylock` - a lock screen with blurred background
- `qpwgraph` - an easy audio routing panel (PipeWire)
- `pipewire-controller` - a tray icon to change audio sample rate and buffer size
- `appimage-integrator` - simply drop AppImages into your "Applications" folder for automatic installation/integration into launchers, or delete them to uninstall
- `lxsession` - a lightweight session manager

## How to Start

### Install the Latest Arch Linux

- Check out the [releases page](https://archlinux.org/releng/releases/) and download the latest Arch Linux ISO.
- Make a bootable USB. A recommended method is using [Ventoy](https://www.ventoy.net/en/download.html) by following the [instructions](https://www.ventoy.net/en/doc_start.html) and copying the downloaded ISO there.
- Run `archinstall`, choose a `desktop` type installation, and select `pipewire` as the audio server.

### Installation

Install dependencies:
```bash
sudo pacman -S --needed git
git clone https://github.com/apapamarkou/my-hyprland-desktop.git
cp -r my-hyprland-desktop/* ~/
cp -r my-hyprland-desktop/.* ~/
my-hyprland-desktop/setup.sh
```

## Disclaimer

This repo is provided as-is with no warranty.

---

Let me know if anything else needs adjusting!
