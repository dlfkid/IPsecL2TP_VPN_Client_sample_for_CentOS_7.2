#!/bin/sh

echo "Install strongswan & xl2tpd..."

rpm -ivh ./strongswan-5.5.3-1.el7.x86_64.rpm
rpm -ivh ./xl2tpd-1.3.8-2.el7.x86_64.rpm

echo "copy ipsec.conf..."

cp -rf ./ipsec.conf /etc/strongswan/
chmod 600 /etc/strongswan/ipsec.conf

echo "copy personal secret key..."

cp -rf ./ipsec.secrets /etc/strongswan/
chmod 600 /etc/strongswan/ipsec.secrets

echo "copy xl2tpd.conf..."

cp -rf ./xl2tpd.conf /etc/xl2tpd/xl2tpd.conf

echo "copy options.xl2tpd.client"

cp ./options.xl2tpd.client /etc/ppp/options.xl2tpd.client
chmod 600 /etc/ppp/options.xl2tpd.client