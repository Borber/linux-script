#!/bin/bash


INTERFACE="wlx0013ef6a9931"
OUT_INTERFACE="eno1"
WORK_DIR="/etc/hostapd/${INTERFACE}/"
CONF_FILE="${WORK_DIR}/hostapd.conf"
PID_FILE="/var/run/hostapd_${INTERFACE}.pid"
LOG_FILE="/var/log/hostapd_${INTERFACE}.log"
SITE_DIR="${WORK_DIR}/site/"
ROUTE_IP="20.18.2.1"

ifconfig ${INTERFACE} up
ifconfig ${INTERFACE} ${ROUTE_IP}/24
echo "INTERFACE done!"
service isc-dhcp-server start
echo "DHCP done!"
hostapd -B -P ${PID_FILE} -f ${LOG_FILE} ${CONF_FILE}
echo "Hostapd done!"
iptables -t nat -A POSTROUTING -o ${OUT_INTERFACE} -j MASQUERADE
