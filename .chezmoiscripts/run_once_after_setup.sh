#!/bin/sh

# RPM Fusion setup
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf update -y @core

# RPM Fusion multimedia
sudo dnf swap -y ffmpeg-free ffmpeg --allowerasing
sudo dnf update -y @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

sudo dnf swap -y mesa-va-drivers mesa-va-drivers-freeworld
sudo dnf swap -y mesa-vdpau-drivers mesa-vdpau-drivers-freeworld

sudo dnf swap -y mesa-va-drivers.i686 mesa-va-drivers-freeworld.i686
sudo dnf swap -y mesa-vdpau-drivers.i686 mesa-vdpau-drivers-freeworld.i686

# System packages
sudo dnf group install -y c-development development-tools
sudo dnf install -y zsh stow kitty

# PicoSDK Dependecies
sudo dnf install arm-none-eabi-gcc-cs-c++ arm-none-eabi-newlib libusb1-devel

# Brew
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install antidote
brew install eza
brew install fastfetch
brew install fd
brew install ffmpeg
brew install fzf
brew install gh
brew install imagemagick
brew install jq
brew install lazygit
brew install neovim
brew install poppler
brew install resvg
brew install ripgrep
brew install yazi
brew install zoxide
brew install starship
brew install kew
brew install mise
brew install rustup
brew install picotool
brew install yt-dlp
brew install aria2

# Mise
mise install

# Mise Tasks
mise setup:gh
mise setup:picotool jaugusto
mise setup:beets
