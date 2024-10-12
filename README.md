# My Hyprland Desktop

This repo contains my post-install scripts to quickly set up a fresh Arch Linux installation with Sway and Hyprland window managers.

## System Features

- Interactive installation script
- Automatic `yay` installation
- Fancy `zsh` shell installation and configuration
- Creation of a handy `update-grub` script
- Option to install `nerd fonts`
- Tweaks for pro-audio users
- Automatic `Focusrite Control Panel` setup
- Automatic enablement of Windows VST plugin support
- Git configuration
- Password asterisk feedback tweak

## Desktop Features

- [sway](https://swaywm.org/) + [hyprland](https://hyprland.org/) - window managers
- [waybar](https://github.com/Alexays/Waybar) - desktop bar
- [azote](https://github.com/nwg-piotr/azote) - wallpaper manager
- [swaync](https://github.com/catppuccin/swaync) - notifications panel
- [dex](https://github.com/jceb/dex) - autostart applications support
- [autotiling](https://github.com/nwg-piotr/autotiling) - auto-decide tiling for new windows
- [aarchup](https://github.com/aericson/aarchup) - updates notification
- [wlsunset](https://sr.ht/~kennylevinsen/wlsunset/) - night light based on your location's sunset
- [flameshot](https://github.com/flameshot-org/flameshot) - screenshots tool
- [nwg-drawer](https://github.com/nwg-piotr/nwg-drawer) - full-screen application and file launcher/finder
- [swaylock](https://github.com/swaywm/swaylock) - a lock screen with blurred background
- [qpwgraph](https://github.com/rncbc/qpwgraph) - an easy audio routing panel (PipeWire)
- [pipewire-controller](https://github.com/apapamarkou/pipewire-controller) - a tray icon to change audio sample rate and buffer size
- [appimage-integrator](https://github.com/apapamarkou/appimage-integrator) - simply drop AppImages into your "Applications" folder for automatic installation/integration into launchers, or delete them to uninstall
- [lxsession](https://github.com/lxde/lxsession) - a lightweight session manager

## How to Start

### Install the Latest Arch Linux

- Check out the [releases page](https://archlinux.org/releng/releases/) and download the latest Arch Linux ISO.
- Make a bootable USB. A recommended method is using [Ventoy](https://www.ventoy.net/en/download.html) by following the [instructions](https://www.ventoy.net/en/doc_start.html) and copying the downloaded ISO there.
- Run `archinstall`, choose a `desktop` type installation, and select `pipewire` as the audio server.

**IMPORTANT**: If you're running this on an existing (non-fresh) Arch system, make sure to create a full backup. Some configuration files will be overwritten, and a large number of packages will be installed.

### Installation
 
```
sudo pacman -S --needed git
git clone https://github.com/apapamarkou/my-hyprland-desktop.git
cp -r my-hyprland-desktop/* ~/
cp -r my-hyprland-desktop/.* ~/
my-hyprland-desktop/setup.sh
```

## Important Notes and warnings

- The setup script may install non FOSS software.
- The setup script install a lot of needed packages in a non interactive mode using the flag `--noconfirm' for convinience.
- This setup is using `https://ipinfo.io` upon login to automatic find your location for use with `wlsunset`. Some people may want to edit `~.profile`, remove the `curl` commands and "hadcode" the location manually.
- There is no support for uninstallation proccess. If you're going to try this, it's recommended to use `timeshift` to back up both your system and home directories, so you can easily revert the installation if needed.

## TODO

- User manual
- Shortcuts Help
- AI integration

## Disclaimer

This repo is provided as-is with no warranty.

---

Let me know if anything else needs adjusting!
