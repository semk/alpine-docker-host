# alpine-docker-host

Packer script to build a minimal Alpine Linux based Docker Host OS image (QCOW2/OVA) using QEMU.

### Building

Just run

    ./build.sh

### Configuration

    .
    ├── LICENSE
    ├── README.md
    ├── alpine-docker-host-x86_64.json      # Packer configuration
    ├── build.sh                            # Main build script
    ├── http
    │   └── answers                         # File exposed to QEMU. Used with setup-alpine
    └── scripts                             # Scripts that are run inside the Alpine Guest
        ├── 00-configure-base.sh
        ├── 10-install-packages.sh
        ├── 20-configure-networking.sh
        ├── 25-configure-sshd.sh
        ├── 30-configure-users.sh
        ├── 60-configure-docker.sh
        ├── 80-configure-vbox.sh
        └── 99-minimize-disk.sh