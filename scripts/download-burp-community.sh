#!/usr/bin/env bash

set -e
set -u

VERSION="2021.10.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="02a0c87a0f13123d94f41a1e37e56774c868e1fdbeff22ee6bd2fbb667f51176"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
