#!/bin/sh

echo "http://dl-4.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories
echo "@edge http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories

# Install the packages
apk add -U busybox-extras \
    open-vm-tools@edge \
    virtualbox-guest-additions \
    virtualbox-guest-modules-vanilla \
    docker py-pip sudo bash curl

# update all packages, especially the kernel.
apk update && apk upgrade -U --available

# NOTE: Docker Compose 1.24 requires gcc installed because of dependencies. Hence
# Set to 1.23.2 for now.
pip install docker-compose==1.23.2