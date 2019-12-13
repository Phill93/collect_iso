#!/bin/bash

trap times EXIT

LINUX="./linux"
WIN="./win"
TOOLS="./tools"
VMWARE="./vmware"

mkdir -p $LINUX
mkdir -p $WIN
mkdir -p $TOOLS
mkdir -p $VMWARE

echo "Debian 10 Netinstall"
rsync --no-motd -P ftp-stud.hs-esslingen.de::debian-cd/current/amd64/iso-cd/debian-10.*-amd64-netinst.iso $LINUX/debian-9-amd64-netinst.iso
echo "==================="
echo "Ubuntu 18.04 live"
rsync --no-motd -zhhP rsync://cdimage.ubuntu.com/cdimage/bionic/daily-live/current/bionic-desktop-amd64.iso $LINUX
echo "-------------------"
rsync --no-motd -zhhP rsync://cdimage.ubuntu.com/cdimage/ubuntu-server/bionic/daily-live/current/bionic-live-server-amd64.iso $LINUX
echo "==================="
echo "Archlinux live"
rsync --no-motd -P rsync://ftp.halifax.rwth-aachen.de/archlinux/iso/latest/archlinux-*-x86_64.iso $LINUX/archlinux-x86_64.iso
echo "==================="
echo "Gparted"
wget -c -N https://downloads.sourceforge.net/gparted/gparted-live-1.0.0-5-i686.iso -O $TOOLS/gparted-live-i686.iso
echo "-------------------"
wget -c -N https://downloads.sourceforge.net/gparted/gparted-live-1.0.0-5-amd64.iso -O $TOOLS/gparted-live-amd64.iso
echo "==================="
echo "Clonezilla"
wget -c -N http://downloads.sourceforge.net/clonezilla/clonezilla-live-2.6.4-10-amd64.iso -O $TOOLS/clonezilla-amd64.iso
echo "-------------------"
wget -c -N http://downloads.sourceforge.net/clonezilla/clonezilla-live-2.6.4-10-i686.iso -O $TOOLS/clonezilla-i686.iso
echo "==================="
echo "Super Grub2 Disk"
wget -c -N https://downloads.sourceforge.net/project/supergrub2/2.04s1/super_grub2_disk_2.04s1/super_grub2_disk_hybrid_2.04s1.iso -O $TOOLS/super_grub2_disk.iso
echo "==================="
echo "NTPassword Reset"
rm -f cd140201.iso
wget http://pogostick.net/~pnh/ntpasswd/cd140201.zip
unzip cd140201.zip
rm -f cd140201.zip
mv cd140201.iso $TOOLS/ntpasswd.iso
echo "==================="
echo "Tails"
wget -c -N -O $LINUX/tails-amd64.iso https://mirrors.dotsrc.org/tails/stable/tails-amd64-4.1/tails-amd64-4.1.iso
echo "==================="
echo "Opsi Boot Image"
wget -c -N -O $TOOLS/opsi.iso http://download.uib.de/opsi4.1/boot-cd/opsi4.1.0-client-boot-cd_20181213.iso
