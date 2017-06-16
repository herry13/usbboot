#!/bin/sh

if [ $(id -u) -ne 0 ]; then
  echo "Error: this script must be run under root."
  exit 1
fi

HOME=$(dirname $0)

cp $HOME/rpiboot /usr/bin/
cp $HOME/rpiboot.service /etc/systemd/system
systemctl daemon-reload
systemctl enable rpiboot
mkdir -p /var/lib/rpiboot

exit 0
