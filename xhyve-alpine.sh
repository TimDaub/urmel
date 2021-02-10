#!/bin/sh

BOOTVOLUME="alpine.dmg"
IMG="alpine-standard-3.13.1-x86.iso"

PATH="build/Release:build:$PATH"

xhyve \
    -A \
    -m 2G \
    -c 2 \
    -s 0:0,hostbridge \
    -s 2:0,virtio-net \
    -s 3:0,ahci-cd,$BOOTVOLUME \
    -s 4:0,virtio-blk,$IMG \
    -s 31,lpc \
    -l com1,stdio \
    -f fbsd,test/userboot.so,$BOOTVOLUME,""
