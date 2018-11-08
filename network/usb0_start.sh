#!/bin/bash

if [ -d /sys/class/net/usb0 ]
then
	ifconfig usb0 down	
	ifconfig usb0 up
	if [ -f /var/run/dhclient_usb0.pid ]
	then
		kill $(cat /var/run/dhclient_usb0.pid)
	fi
	dhclient usb0 -pf /var/run/dhclient_usb0.pid
fi
