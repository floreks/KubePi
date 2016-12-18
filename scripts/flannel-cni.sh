#!/bin/bash

# Run on RPi to download and install flannel CNI
sudo curl -sSL --retry 5 https://storage.googleapis.com/kubernetes-release/network-plugins/cni-arm-07a8a28637e97b22eb8dfe710eeae1344f69d16e.tar.gz | sudo tar -xz -C /opt/cni