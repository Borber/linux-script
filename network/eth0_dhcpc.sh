#!/bin/bash

ifconfig eth0 up
service isc-dhcp-server stop
dhclient eth0
