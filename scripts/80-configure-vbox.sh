set -eux

# Start Virtualbox Guest Additions service on boot
rc-update add virtualbox-guest-additions
echo vboxsf >> /etc/modules
