#!/bin/sh

set -eux

# update all packages, especially the kernel.
apk update && apk upgrade --available

# Install the packages
apk add \
  busybox-extras \
  docker sudo bash curl
