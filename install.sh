#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#yay
    cd /tmp
    mkdir install
    cd install
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -sir --noconfirm
    cd /tmp
    sudo rm -d -f -r install
#htop & fastfetch
    sudo pacman -Sy htop fastfetch --noconfirm
#instalacion del escritorio
    sudo pacman -Sy xfce4 xfce4-goodies xorg --noconfirm
#lightdm
    sudo pacman -Sy lightdm lightdm-gtk-greeter --noconfirm
    sudo systemctl enable lightdm
#libreoffice
    sudo pacman -Sy libreoffice-fresh-es --noconfirm
#kde
    sudo pacman -Sy okular kate --noconfirm
#vlc
    sudo pacman -S vlc vlc-plugin-ffmpeg --noconfirm
#librewolf
    yay -Sy librewolf-bin --noconfirm
#pamac
    yay -Sy libpamac-flatpak --noconfirm
    yay -Sy pamac-flatpak --noconfirm
#konsole
    sudo pacman -Sy konsole --noconfirm
#ark
    sudo pacman -Sy ark --noconfirm
#kernel
    sudo pacman -Sy linux-zen --noconfirm
    sudo pacman -R linux --noconfirm
    sudo grub-mkconfig -o /boot/grub/grub.cfg
#internet
    sudo pacman -Sy networkmanager network-manager-applet usb_modeswitch --noconfirm
    sudo pacman -S network-manager-applet --noconfirm
    sudo systemctl enable NetworkManager.service
    sudo systemctl enable ModemManager.service
#bluetooth#
    sudo pacman -Sy bluez bluez-utils bluedevil blueberry --noconfirm
    sudo systemctl enable bluetooth.service
#limpiar
    sudo pacman -Sc --noconfirm
    yay -Sc --noconfirm
#servicios
    systemctl enable lightdm
#actualizar & limpiar
    sudo pacman -Syyu --noconfirm
    yay -Syyu --noconfirm
    sudo pacman -Scc --noconfirm
    yay -Scc --noconfirm
#reinicio
    sudo reboot
