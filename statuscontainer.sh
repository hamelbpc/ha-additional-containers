#!/usr/bin/env bash

watch -n1 systemctl status docker-compose@$1
