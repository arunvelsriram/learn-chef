#!/bin/bash

entry="192.168.33.10 chefserver.vm"

grep -qF "$entry" /etc/hosts || echo $entry >> /etc/hosts