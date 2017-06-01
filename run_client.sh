#!/bin/bash

# check for root privilege 
if [[ $EUID -ne 0 ]]; then
  echo "ERROR: You must be a root user" 2>&1
  exit 1
fi 

openvpn client_static.conf 
