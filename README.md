Configuration Files for Ipsec/L2TPD VPN client Using pre shared keys for CENTOS7.2

# required:

xl2tpd

strongswan

# installation:

for script install, copy all files to your system in one directory, run the vpn_setup.sh script.

for manual install, make sure you have strongswan & xl2tpd installed, then simply copy files to path as followed...

```
ipsec.conf:/etc/strongswan/ overwrite original file, set server's ipaddress first

ipsec.secret:/etc/strongswan/ overwrite orginal file, set server's pre shared key first

xl2tpd.conf:/etc/xl2tpd/ overwrite orginal file, set server's ipaddress first

options.xl2tpd.publicvpn:/etc/ppp/ set username & password first
```

## scripts for fast install:
```
vpn_setup
```
## scripts for vpn fast connect and disconnect:

I made two sample configration files, options.xl2tpd.mycpn & options.xl2tpd.publicvpn, You can made your own config and use them as scripts below remember to replace the configuration name in the scripts.

```
connect

disconnect
```
