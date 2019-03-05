#!/bin/bash

echo "deleting default vpn route"

route del default dev ppp1

echo "dissconnect from vpn"

echo "d myvpn" > /var/run/xl2tpd/l2tp-control
# echo "d publicvpn" > /var/run/xl2tpd/l2tp-control

echo "stop strongswan & xl2tpd"

strongswan down myvpn
# strongswan down publicvpn

systemctl stop strongswan xl2tpd

