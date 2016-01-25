#!/bin/sh
g++ -std=c++11 -O3 maya22-control.c -o maya22-control -lhidapi-hidraw -lhidapi-libusb
strip maya22-control
