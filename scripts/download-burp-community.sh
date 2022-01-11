#!/usr/bin/env bash

set -e
set -u

VERSION="2021.12.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="173f6d65e1760c6dc5348a0ed82ab11cda26fcf2bd4dbf1883ba82ec2ade16ee"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
