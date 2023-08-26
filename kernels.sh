export disk="/dev/nvme0n1p"

sudo pacman -S bootctl linux-lts

ucode=$(lscpu | grep "^Vendor ID:" | awk -F":" '{print $2}' | xargs)

if [[ "$ucode" == *"Intel"* ]]; then
  echo "Intel processor detected. Installing intel-ucode...."
  ARCH="intel-ucode.img"
elif [[ "$ucode" == *"AMD"* ]]; then
  echo "AMD processor detected. Installing amd-ucode...."
  ARCH="amd-ucode.img"
else
  echo "No Intel or AMD processor detected."
  ARCH=""
fi


UUID=$(blkid -s UUID -o value ${disk}2)

# create LTS loader

sudo echo "title    Arch Linux LTS" > /boot/loader/entries/arch-lts.conf
sudo echo "linux    /vmlinuz-linux-lts" >> /boot/loader/entries/arch-lts.conf
sudo echo "initrd   /"$ARCH >> /boot/loader/entries/arch-lts.conf
sudo echo "initrd   /initramfs-linux-lts.img" >> /boot/loader/entries/arch-lts.conf
sudo echo "options  cryptdevice=UUID="$UUID":root:allow-discards root=/dev/mapper/root rootflags=subvol=@ rd.luks.options=discard rw" >> /boot/loader/entries/arch-lts.conf

# create fallback loader

sudo echo "title    Arch Linux (fallback)" > /boot/loader/entries/arch-fallback.conf
sudo echo "linux    /vmlinuz-linux" >> /boot/loader/entries/arch-fallback.conf
sudo echo "initrd   /"$ARCH >> /boot/loader/entries/arch-fallback.conf
sudo echo "initrd   /initramfs-linux-fallback.img" >> /boot/loader/entries/arch-fallback.conf
sudo echo "options  cryptdevice=UUID="$UUID":root:allow-discards root=/dev/mapper/root rootflags=subvol=@ rd.luks.options=discard rw" >> /boot/loader/entries/arch-fallback.conf

#create LTS fallback loader

sudo echo "title    Arch Linux LTS (fallback)" > /boot/loader/entries/arch-lts-fallback.conf
sudo echo "linux    /vmlinuz-linux-lts" >> /boot/loader/entries/arch-lts-fallback.conf
sudo echo "initrd   /"$ARCH >> /boot/loader/entries/arch-lts-fallback.conf
sudo echo "initrd   /initramfs-linux-lts-fallback.img" >> /boot/loader/entries/arch-lts-fallback.conf
sudo echo "options  cryptdevice=UUID="$UUID":root:allow-discards root=/dev/mapper/root rootflags=subvol=@ rd.luks.options=discard rw" >> /boot/loader/entries/arch-lts-fallback.conf
ls /