#!/usr/bin/env bash

set -e
set -u

VERSION="2023.2.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="191d3e1ae0ba8d22a222ba9cb04c5400183e9d7cf3e189addf15558d50c766c0"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
