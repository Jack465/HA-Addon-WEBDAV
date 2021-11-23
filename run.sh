#!/usr/bin/with-contenv bashio

USERNAME=$(bashio::config 'username')
PASSWORD=$(bashio::config 'password')

/usr/bin/rclone serve webdav /media/ -L --addr 0.0.0.0:2476 --user ${USERNAME} --pass ${PASSWORD}