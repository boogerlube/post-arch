if : >/dev/tcp/8.8.8.8/53; then
  echo 'Internet available.'
else
  echo 'Offline.';exit
fi

sudo pacman -S --needed --noconfirm gvfs-smb p7zip unrar tar rsync file-roller terminator git
sudo pacman -S --needed --noconfirm a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore
sudo pacman -S --needed --noconfirm arc-gtk-theme papirus-icon-theme gnome-keyring copyq pinta nfs-utils
sudo pacman -S --needed --noconfirm system-config-printer blueman networkmanager-openvpn hplip arandr lsof
sudo pacman -S --needed --noconfirm remmina freerdp gnome-system-monitor maui-pix audacious okular gnome-screenshot
sudo pacman -S --needed --noconfirm ncdu htop btop putty bat fzf tldr exa gprename ristretto flameshot pacman-contrib
sudo pacman -S --needed --noconfirm gnome-characters obsidian-icon-theme deepin-icon-theme inotify-tools gnome-terminal
sudo pacman -S --needed --noconfirm libreoffice-fresh hunspell hunspell-en_us mediainfo-gui mpv notepadqq foliate ebook-tools
sudo pacman -S --needed --noconfirm cups cups-pdf czkawka mullvad-vpn gnome-calculator gnome-clocks
sudo systemctl enable --now cups
sudo pacman -S google-chrome
sudo pacman -S ttf-ms-fonts
sudo pacman -S gnome-disk-utility
sudo pacman -S lightdm-slick-greeter
sudo pacman -S lightdm-settings
#yay -S pamac-aur
#yay -S albert
#yay -S mullvad-vpn
#yay -S timeshift
#yay -S timeshift-autosnap
yay -S netdiscover
yay -S mp3gain
#sudo pacman -S xdg-desktop-portal-gnome
#sudo pacman -S xdg-desktop-portal-gtk


