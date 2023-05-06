if : >/dev/tcp/8.8.8.8/53; then
  echo 'Internet available.'
else
  echo 'Offline.';exit
fi

sudo pacman -S --needed --noconfirm gvfs-smb p7zip unrar tar rsync file-roller terminator git
sudo pacman -S --needed --noconfirm a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore
sudo pacman -S --needed --noconfirm arc-gtk-theme papirus-icon-theme gnome-keyring copyq pinta
sudo pacman -S --needed --noconfirm system-config-printer blueman networkmanager-openvpn hplip arandr
sudo pacman -S --needed --noconfirm remmina freerdp gnome-system-monitor maui-pix audacious okular gnome-screenshot
sudo pacman -S --needed --noconfirm ncdu htop btop putty bat fzf tldr exa gprename nomacs ristretto flameshot pacman-contrib
sudo pacman -S --needed --noconfirm gnome-characters obsidian-icon-theme deepin-icon-theme nfs-utils inotify-tools gnome-terminal netdiscover
sudo pacman -S --needed --noconfirm ligreoffice-fresh mediainfo-gui mpv networkmanager-openvpn notepadqq
#sudo pacman -S --needed --noconfirm cups cups-pdf
#sudo systemctl enable --now cups
yay -S google-chrome
yay -S ttf-ms-fonts
yay -S gnome-disk-utility
yay lightdm-slick-greeter
yay lightdm-settings
yay -S pamac-aur
yay -S albert
yay -S mullvad-vpn
yay -S timeshift
yay -S timeshift-autosnap


