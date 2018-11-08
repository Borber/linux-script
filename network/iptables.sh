#!/bin/bash

# 端口映射
#iptables -t nat -A PREROUTING -d 20.18.1.1 -p tcp --dport 外部端口 -j DNAT --to-destination 内网ip:端口
#iptables -t nat -A POSTROUTING -d 内网ip -p tcp --dport 端口 -j SNAT --to 20.18.1.1

# 网络转发
iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE

