set -ux

source /etc/os-release

cat << EOF > /etc/motd

$PRETTY_NAME ($VERSION_ID) - Docker Host

EOF
