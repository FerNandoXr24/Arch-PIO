#!/bin/bash
# -*- ENCODING: UTF-8 -*-

#instalacion del escritorio
    sudo pacman -Sy xorg-server xfce4 xfce4-goodies --noconfirm
#lightdm
    sudo pacman -Sy lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm
#libreoffice
    sudo pacman -Sy libreoffice-fresh-es --noconfirm
#kde
    sudo pacman -Sy dolphin kio-admin okular kate --noconfirm
#vlc
    sudo pacman -S vlc vlc-plugin-ffmpeg --noconfirm
#yay
    cd /tmp
    mkdir install
    cd install
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -sir --noconfirm
    cd /tmp
    sudo rm -d -f -r install
#librewolf
    yay -Sy librewolf-bin --noconfirm
#pamac
    yay -Sy libpamac-flatpak --noconfirm
    yay -Sy pamac-flatpak --noconfirm
#kernel
    sudo pacman -Sy linux-zen
    sudo pacman -R linux
    sudo grub-mkconfig -o /boot/grub/grub.cfg
#internet
    sudo pacman -Sy networkmanager network-manager-applet usb_modeswitch --noconfirm
    sudo systemctl enable NetworkManager.service
    sudo systemctl enable ModemManager.service
#bluetooth#
    sudo pacman -Sy bluez bluez-utils bluedevil --noconfirm
    sudo systemctl enable bluetooth.service
#limpiar
    sudo pacman -Sc --noconfirm
    yay -Sc --noconfirm
#servicios
    systemctl enable lightdm
#reinicio
    sudo reboot
