cat <EOF >> /etc/sysctl.conf
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1

EOF

echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6

echo 1 > /proc/sys/net/ipv6/conf/default/disable_ipv6

sysctl -p

sysctl -a | grep ipv6 | more

