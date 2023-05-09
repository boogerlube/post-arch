cp -r Wallpapers ~/Pictures/
cp ./shell-arch/.* ~
cat fstab.txt | sudo tee -a /etc/fstab
sudo mkdir /media
sudo mkdir /media/pinky
sudo mkdir /media/share
sudo mkdir /media/torrent
sudo mount -a