#!/bin/bash

ifconfig eth0 down
macchanger -A eth0
ifconfig eth0 up

ifconfig wlan0 down
macchanger -A wlan0
ifconfig wlan0 up

