#!/usr/bin/env bash

docker run --rm httpd:alpine htpasswd -nbB admin 'password' | cut -d ":" -f 2 |sed 's/\$/\$\$/g' 

