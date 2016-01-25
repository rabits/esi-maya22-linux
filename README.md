ESI Maya22
==========

This is control application for the ESI Maya22 usb sound device.

Features
--------
* Monitoring: Enable/Disable
* Switch input: Line In, Mic, High-Z, Mic+High-Z, Mute
* Level: Input L&R, Output L&R

Udev permissions
----------------
Please, don't run this app under root.
Just create udev rule for hidraw device with autorun set defaults (/etc/udev/rules.d/50-esi-maya22.rules):
```
KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="2573", ATTRS{idProduct}=="0017", GROUP="plugdev", MODE="0660", RUN+="/usr/local/bin/maya22-control -d"
```
