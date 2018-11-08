#!/bin/bash

if [ -f /var/run/hostapd_wlx0013ef6a9931.pid ]
then
	HOSTAPD_PID=$(cat /var/run/hostapd_wlx0013ef6a9931.pid)
	kill ${HOSTAPD_PID}
fi
if [ -f /var/run/dhcpd.pid/ ]
then
	DHCPD_PID=$(cat /var/run/dhcpd.pid)
	service  isc-dhcp-server stop
fi
