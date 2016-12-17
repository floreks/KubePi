#!/bin/bash

# Taint master to kube-master namespace
kubectl taint node kube-master dedicated=kube-master:NoSchedule

# Taint master to node-1 namespace (for sensors)
kubectl taint node kube-node-1 dedicated=node-1:NoSchedule
