#!/bin/bash

MASTER_IP="192.168.0.100"
MINION_IP="192.168.0.101"
USERNAME="pirate"

function sshCopyFile {
  # destination
  dest=$1

  # file to copy
  file=$2

  scp ${file} ${USERNAME}@${dest}:/home/pirate
}

if [ "${1}" == "master" ]; then
  ssh ${USERNAME}@${MASTER_IP}
elif [ "${1}" == "node-1" ]; then
  ssh ${USERNAME}@${MINION_IP}
elif [ "${1}" == "copy" ]; then
  if [ "${2}" == "master" ]; then
    sshCopyFile ${MASTER_IP} ${3}
  elif [ "${2}" == "node-1" ]; then
    sshCopyFile ${MINION_IP} ${3}
  fi
fi
