#!/bin/sh

dd if=/dev/zero of=storage.img bs=1048576 count=350

xhyve \
  -A \
  -m 4G \
  -s 0,hostbridge \
  -s 2,virtio-net \
  -s 3,ahci-cd,alpine-standard-3.13.1-x86.iso \
  -s 4,virtio-blk,storage.img \
  -s 31,lpc \
  -l com1,stdio \
  -f "kexec,vmlinuz-lts,initramfs-lts,alpine_dev=cdrom:iso9660 earlyprintk=serial console=ttyS0" -w

