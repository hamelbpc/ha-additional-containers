#!/usr/bin/env bash
set -x

systemctl stop docker-compose@$1
