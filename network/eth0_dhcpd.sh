#!/bin/bash

ifconfig eth0 up
ifconfig eth0 20.18.1.1/24
service isc-dhcp-server start
