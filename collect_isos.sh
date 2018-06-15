#!/bin/bash

#Debian 9 Netinstall
rsync --no-motd -P ftp-stud.hs-esslingen.de::debian-cd/current/amd64/iso-cd/debian-9.4.0-amd64-netinst.iso ./
#Ubuntu 16.04 live
rsync --no-motd -zhhP rsync://cdimage.ubuntu.com/cdimage/xenial/daily-live/current/xenial-desktop-amd64.iso .
rsync --no-motd -zhhP rsync://cdimage.ubuntu.com/cdimage/xenial/daily-live/current/xenial-desktop-i386.iso .
#Ubuntu 18.04 live
rsync --no-motd -zhhP rsync://cdimage.ubuntu.com/cdimage/bionic/daily-live/current/bionic-desktop-amd64.iso .
#Archlinux live
rsync --no-motd -P rsync://ftp.halifax.rwth-aachen.de/archlinux/iso/2018.03.01/archlinux-2018.03.01-x86_64.iso .
#Gparted
wget -c -N https://downloads.sourceforge.net/gparted/gparted-live-0.31.0-1-i686.iso
wget -c -N https://downloads.sourceforge.net/gparted/gparted-live-0.31.0-1-amd64.iso
#Clonezilla
wget -c -N https://sourceforge.net/projects/clonezilla/files/clonezilla_live_stable/2.5.2-31/clonezilla-live-2.5.2-31-amd64.iso
wget -c -N https://sourceforge.net/projects/clonezilla/files/clonezilla_live_stable/2.5.2-31/clonezilla-live-2.5.2-31-i686.iso
#Super Grub2 Disk
wget -c -N https://sourceforge.net/projects/supergrub2/files/2.02s9/super_grub2_disk_2.02s9/super_grub2_disk_hybrid_2.02s9.iso
#NTPassword Reset
rm -f cd140201.iso
wget http://pogostick.net/~pnh/ntpasswd/cd140201.zip
unzip cd140201.zip
rm -f cd140201.zip
mv cd140201.iso ntpasswd.iso
#Tails
wget -c -N https://mirror.bytemark.co.uk/tails/stable/tails-amd64-3.6.1/tails-amd64-3.6.1.iso
#Opsi Boot Image
wget -c -N http://download.uib.de/opsi4.1/boot-cd/opsi4.1.0-client-boot-cd_20180309.iso
mv opsi4.1.0-client-boot-cd_20180309.iso opsi4.1.0-client-boot-cd.iso