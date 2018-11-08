#!/bin/bash

ifconfig wlan0 down
ifconfig wlan0 up

if [ -f /var/run/wpa_supplicant_wlan0.pid ]
then
	kill $(cat /var/run/wpa_supplicant_wlan0.pid)
fi

wpa_supplicant -B -D nl80211 -P /var/run/wpa_supplicant_wlan0.pid -i wlan0 -c /etc/wpa_supplicant.conf

if [ -f /var/run/dhclient_wlan0.pid ]
then
	kill $(cat /var/run/dhclient_wlan0.pid)
fi

dhclient wlan0 -pf /var/run/dhclient_wlan0.pid


