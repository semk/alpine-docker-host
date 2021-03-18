set -eux

echo "ipv6" >> /etc/modules

rc-update add docker default

adduser alpine docker

# NOTE: The following configurations are required to fix the WARNING: No {swap,memory} limit support
# echo "cgroup /sys/fs/cgroup cgroup defaults 0 0" >> /etc/fstab
# cat >> /etc/cgconfig.conf <<EOF
# mount {
# cpuacct = /cgroup/cpuacct;
# memory = /cgroup/memory;
# devices = /cgroup/devices;
# freezer = /cgroup/freezer;
# net_cls = /cgroup/net_cls;
# blkio = /cgroup/blkio;
# cpuset = /cgroup/cpuset;
# cpu = /cgroup/cpu;
# }
# EOF
# sed -i 's/^default_kernel_opts="quiet rootfstype=ext4"/default_kernel_opts="quiet rootfstype=ext4 cgroup_enable=memory swapaccount=1"/g' /etc/update-extlinux.conf
# update-extlinux


## === TIM :: really old shit below, delete it all

#adduser -SDHs /sbin/nologin dockremap
#addgroup -S dockremap
#echo dockremap:$(cat /etc/passwd|grep dockremap|cut -d: -f3):65536 >> /etc/subuid
#echo dockremap:$(cat /etc/passwd|grep dockremap|cut -d: -f4):65536 >> /etc/subgid
#adduser alpine dockremap
#mkdir -p /etc/docker/
#echo "{\"userns-remap\": \"dockremap\"}" > /etc/docker/daemon.json

# service docker start