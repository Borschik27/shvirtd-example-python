#!/bin/sh
wd=/opt/myProj
git clone https://github.com/Borschik27/shvirtd-example-python.git $wd
chown -R $(id -u):$(id -g) $wd
docker compose -f $wd/docker-compose.yml up
