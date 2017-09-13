#!/bin/bash

echo "deleting default vpn route"

route del default dev ppp1

echo "dissconnect from vpn"

echo "d publicvpn" > /var/run/xl2tpd/l2tp-control

echo "stop strongswan & xl2tpd"

strongswan down publicvpn

systemctl stop strongswan xl2tpd

