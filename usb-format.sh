#/bin/bash

lsblk -p -S -o NAME,TYPE,SIZE,VENDOR | grep 'usb'
