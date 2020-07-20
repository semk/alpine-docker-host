#!/bin/bash
#
# Available variables:
#
# packer build \
#   -var 'vm_name=<val>' \
#   -var 'vm_description=<val>' \
#   -var 'vm_version=<val>' \
#   -var 'vm_product=<val>' \
#   -var 'vm_producturl=<val>' \
#   -var 'vm_vendor=<val>' \
#   -var 'vm_vendorurl=<val>' \
#   -var 'vm_memory=<val>' \
#   -var 'vm_cpus=<val>' \
#   alpine-docker-host-x86_64.json

# Build the OVA with default options
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );
cd ${SCRIPT_DIR}

packer build -force ${SCRIPT_DIR}/alpine-docker-host-x86_64.json

cd -