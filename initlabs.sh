#!/bin/bash
cp sources.list /etc/apt/sources.list
wget pkg.bunsenlabs.org/debian/pool/main/b/bunsen-keyring/bunsen-keyring_2020.10.10%2Bbl11-2_all.deb
dpkg -i bunsen-keyring_2020.10.10%2Bbl11-2_all.deb
apt-get update
apt -y install openbox pulseaudio xserver-xorg-video-ati xserver-xorg-video-radeon xserver-xorg-video-nvidia xserver-xorg-video-nouveau bunsen-meta-all
apt -y purge xfce4-notifyd
chmod 7777 /sbin/shutdown
echo "Done. Rebooting..."
shutdown -r now
