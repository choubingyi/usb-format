#/bin/bash

usb_list=$(lsblk -p -S -o NAME,MODEL,SIZE,VENDOR,TRAN | grep 'usb'| sed -r 's/usb/xxxx/g')

echo $usb_list
