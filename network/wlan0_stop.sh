#!/bin/bash



if [ -f /var/run/wpa_supplicant_wlan0.pid ]
then
	kill $(cat /var/run/wpa_supplicant_wlan0.pid)
fi

if [ -f /var/run/dhclient_wlan0.pid ]
then
	kill $(cat /var/run/dhclient_wlan0.pid)
fi

ifconfig wlan0 down
