#!/usr/bin/env bash

container=${1//\/}
systemctl disable docker-compose@$container
