#!/usr/bin/env bash
git add .
git rm -f --cached netbox/
git commit -m "made changes"
git push origin main
