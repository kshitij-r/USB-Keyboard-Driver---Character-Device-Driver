sudo rmmod usbkbd.ko
sudo make -C /usr/src/linux-headers-$(uname -r) M=$PWD modules
sudo insmod usbkbd.ko
sudo echo -n "1-2:1.0"> /sys/bus/usb/drivers/usbhid/unbind
sudo echo -n "1-2:1.0"> /sys/bus/usb/drivers/usbkbd/bind

