#!/bin/bash
#
# Uses `apt` to install the common packages I will need on every new Ubuntu
# installation. I started working on this late, so it will be incomplete.
#
# Run as root.

# check for root
if [ "$EUID" -ne 0 ]
then
    echo "Run as ROOT."
    exit
fi

# update package lists
apt update

# install build tools
apt install build-essential pkg-config cmake

# install tools
apt install vim git tmux gitg git-lfs doxygen doxygen-gui graphviz curl checkinstall compizconfig-settings-manager

# install user applications
apt install libreoffice vlc gimp
snap install pdftk

# install ibus
apt install ibus ibus-mozc

# install MS fonts
apt install ttf-mscorefonts-installer

# install touchpad indicator and synaptics
add-apt-repository ppa:atareao/atareao
apt update
apt install touchpad-indicator xserver-xorg-input-synaptics-hwe-18.04

# install piper
add-apt-repository ppa:libratbag-piper/piper-libratbag-git
apt update
apt install piper

# install LaTeX
apt install texlive

# TODO: Will add more things when I realise I need them

