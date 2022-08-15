#!/usr/bin/env bash

set -e
set -u

VERSION="2022.8.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="590dd875554cb0472dac2ea2b429937b82c1dc1436595aee30ef87a9219ce4b7"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
