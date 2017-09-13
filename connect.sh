#!/bin/bash

echo "creating l2tp-control file"

mkdir -p /var/run/xl2tpd
touch /var/run/xl2tpd/l2tp-control

echo "restart strongswan & xl2tpd"

systemctl restart strongswan xl2tpd

systemctl status strongswan xl2tpd

echo "setting up ipsec transport"

strongswan up myvpn

echo "connect to vpn server"

echo "c myvpn" > /var/run/xl2tpd/l2tp-control

