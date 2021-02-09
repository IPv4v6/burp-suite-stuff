#!/usr/bin/env bash

set -e
set -u

VERSION="2021.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="37e1b9b3bdf804e6378afc96feb3416d073d1d803d8950041875b39e3490ac73"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
