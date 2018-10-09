#!/bin/bash

name_list=$(lsblk -p -S -o NAME,TRAN | grep 'usb' | sed -e 's/usb//g' )
vendor_list=$(lsblk -p -S -o VENDOR,TRAN | grep 'usb' | sed -e 's/usb//g')
size_list=$(lsblk -p -S -o SIZE,TRAN | grep 'usb' | sed -e 's/usb//g' )

for ((i=0; i<${#name_list[@]}; i++));do
    echo ${name_list[$i]}
    echo ${vendor_list[$i]}
    echo ${size_list[$i]}
done
#echo ${usb_name_list[0]}
#echo ${usb_name_list[1]}

#if read -p "please selesct your usb which need format [0-${#usb_list}]: " format_usb
#then
#    echo $format_usb
#else
#    echo "please select usb device."
#    exit 0
#fi
