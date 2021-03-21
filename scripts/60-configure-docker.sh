set -eux

echo "ipv6" >> /etc/modules

rc-update add docker default

adduser alpine docker
