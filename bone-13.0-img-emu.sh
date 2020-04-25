#/bin/sh

qemu-system-arm -M virt -m 3072m -nographic -bios /usr/local/share/u-boot/u-boot-qemu-arm/u-boot.bin -hda /data8/FreeBSD-ARM/FreeBSD-13.0-CURRENT-arm-armv7-BEAGLEBONE-20200402-r359556.img 



