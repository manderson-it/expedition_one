#!/bin/bash

# check run as root
if [[ "$EUID" -ne 0 ]]; then
  echo "Please run as root"
  exit 42
fi

cd /root
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.12.8/bin/linux/amd64/kubectl
chmod +x ./kubectl
chown manderson:manderson ./kubectl
mv ./kubectl /usr/local/bin/kubectl

exit 0