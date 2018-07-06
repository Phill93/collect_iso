#!/bin/bash

echo "Debian 9 Netinstall"
rsync --no-motd -P ftp-stud.hs-esslingen.de::debian-cd/current/amd64/iso-cd/debian-9.4.0-amd64-netinst.iso ./
echo "Ubuntu 16.04 live"
rsync --no-motd -zhhP rsync://cdimage.ubuntu.com/cdimage/xenial/daily-live/current/xenial-desktop-amd64.iso .
rsync --no-motd -zhhP rsync://cdimage.ubuntu.com/cdimage/xenial/daily-live/current/xenial-desktop-i386.iso .
rsync --no-motd -zhhP rsync://cdimage.ubuntu.com/cdimage/ubuntu-server/xenial/daily/current/xenial-server-amd64.iso .
echo "Ubuntu 18.04 live"
rsync --no-motd -zhhP rsync://cdimage.ubuntu.com/cdimage/bionic/daily-live/current/bionic-desktop-amd64.iso .
rsync --no-motd -zhhP rsync://cdimage.ubuntu.com/cdimage/ubuntu-server/bionic/daily-live/current/bionic-live-server-amd64.iso .
echo "Archlinux live"
rsync --no-motd -P rsync://ftp.halifax.rwth-aachen.de/archlinux/iso/latest/archlinux-*-x86_64.iso ./archlinux-x86_64.iso
echo "Gparted"
wget -c -N https://downloads.sourceforge.net/gparted/gparted-live-0.31.0-1-i686.iso
wget -c -N https://downloads.sourceforge.net/gparted/gparted-live-0.31.0-1-amd64.iso
echo "Clonezilla"
wget -c -N https://sourceforge.net/projects/clonezilla/files/clonezilla_live_stable/2.5.2-31/clonezilla-live-2.5.2-31-amd64.iso
wget -c -N https://sourceforge.net/projects/clonezilla/files/clonezilla_live_stable/2.5.2-31/clonezilla-live-2.5.2-31-i686.iso
echo "Super Grub2 Disk"
wget -c -N https://sourceforge.net/projects/supergrub2/files/2.02s9/super_grub2_disk_2.02s9/super_grub2_disk_hybrid_2.02s9.iso
echo "NTPassword Reset"
rm -f cd140201.iso
wget http://pogostick.net/~pnh/ntpasswd/cd140201.zip
unzip cd140201.zip
rm -f cd140201.zip
mv cd140201.iso ntpasswd.iso
echo "Tails"
wget -c -N -O tails-amd64.iso https://www.mirrorservice.org/sites/dl.amnesia.boum.org/tails/stable/tails-amd64-3.8/tails-amd64-3.8.iso
echo "Opsi Boot Image"
wget -c -N -O opsi.iso http://download.uib.de/opsi4.1/boot-cd/opsi4.1.0-client-boot-cd_20180309.iso
