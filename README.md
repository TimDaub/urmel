# urmel

> Alpine Linux, available in your Mac OS Catalina shell.

## NOTE

Code is not working.

## Installation

- Find latest Alpine version [here](https://dl-cdn.alpinelinux.org/alpine/v3.13/releases/x86/9

```bash
curl -LO <latest Alpine std version>

# create hdd image (2GB)
dd if=/dev/zero of=hdd.img bs=1g count=2

# extract kernel and initramfs
brew install cdrtools
isoinfo -J -x /boot/initramfs-lts -i alpine.iso > initramfs-lts
isoinfo -J -x /boot/vmlinuz-lts -i alpine.iso > vmlinuz-lts
sudo ./install.sh 
# login: root (no password)
setup-alpine # follow instructions

... WIP
```

## References

- https://gist.github.com/rkusa/9e847e52adb3b34a458f
- https://github.com/machyve/xhyve/issues/139
