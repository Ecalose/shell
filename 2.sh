#!/bin/bash

curl -fsSL https://get.docker.com -o get-docker.sh
bash /root/get-docker.sh &
wait
docker pull ghcr.io/shadowsocks/ssserver-rust:latest
