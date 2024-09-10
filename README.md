ESI Maya22
==========

This is control application for the [ESI Maya22](http://www.esi-audio.com/products/maya22usb/) usb sound device.

Features
--------

* Monitoring: Enable/Disable
* Switch input: Line In, Mic, High-Z, Mic+High-Z, Mute
* Level: Input L&R, Output L&R

Build
-----

* Install build requirements: `sudo apt-get install build-essential libhidapi-dev`
* Build application: `./build.sh`
* Copy app to local: `sudo cp maya22-control /usr/local/bin`
* Usage maya22-control binary:

```
$ maya22-control -h
Usage: ./maya22-control [options]

  -e          - Enumerate available devices
  -i          - Enable headphone
  -I          - Disable headphone
  -d          - Set default values
  -c <name>   - Set input channel ('mic', 'hiz', 'line', 'mic_hiz', 'mute')
  -M          - Input monitoring on
  -m          - Input monitoring off
  -l <0-127>  - Input left volume
  -r <0-127>  - Input right volume
  -L <0-145>  - Output left volume (seems 127 without gain and > with gain)
  -R <0-145>  - Output right volume (seems 127 without gain and > with gain)
```

Udev permissions & autoset defaults
-----------------------------------

Please, don't run this app with root permissions.
Just create udev rule for hidraw device with autorun set defaults (/etc/udev/rules.d/50-esi-maya22.rules):

```
KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="2573", ATTRS{idProduct}=="0017", GROUP="plugdev", MODE="0660", RUN+="/usr/local/bin/maya22-control -d"
```

## GUI Applications for ESI Maya22USB Control

If you're looking for a graphical interface to manage the ESI Maya22USB, here are some useful projects you can check out:

- [ESI Maya22USB Control by Psy-Kai](https://gitlab.com/Psy-Kai/ESI-Maya22USBControl)
- [ESI Maya22 Linux GUI by piposeimandi](https://github.com/piposeimandi/esi-maya22-linux-gui)

Both projects offer a GUI for easier control and management of your audio interface.
