# build-env

1.  Download e.g. FreeBSD-12.1-STABLE-arm-armv7-BEAGLEBONE-20200416-r359985.img
2.  Copy FreeBSD-12.1-STABLE-arm-armv7-BEAGLEBONE-20200416-r359985.img to FreeBSD-12.1-STABLE-arm-armv7-BEAGLEBONE.img, for example.
3.  sudo dd if=/dev/zero of=FreeBSD-12.1-STABLE-arm-armv7-BEAGLEBONE.img bs=1k oseek=3g count=5m
4.  sudo mdconfig -a -t vnode -f /OS-IMGS/FreeBSD-12.1-STABLE-arm-armv7-BEAGLEBONE.img -s 3g -u 1
5.  fsck /dev/md1s2a
6.  sudo mdconfig -r -s 8g -u 1
7.  sudo mdconfig -l -u 1
8.  gpart show md1
9.  sudo gpart resize -i2 md1
10. sudo gpart resize -i1 md1s2
11. sudo mdconfig -d -u 1

After everything is done you can start ARM emulator:

sh bone-12.1-img-emu.sh

It is configured with 3GB of memory and 4 CPUs:

#/bin/sh
qemu-system-arm -smp 4 -M virt -m 3072m -nographic -bios /usr/local/share/u-boot/u-boot-qemu-arm/u-boot.bin -hda /OS-IMGS/FreeBSD-12.1-STABLE-arm-armv7-BEAGLEBONE.img
