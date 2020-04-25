#/bin/sh

qemu-system-arm -smp 4 -M virt -m 3072m -nographic -bios /usr/local/share/u-boot/u-boot-qemu-arm/u-boot.bin -hda /OS-IMGS/FreeBSD-12.1-STABLE-arm-armv7-BEAGLEBONE.img



