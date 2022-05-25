#!/usr/bin/env bash

set -x

systemctl start docker-compose@$1
watch -n1 systemctl status docker-compose@$1
