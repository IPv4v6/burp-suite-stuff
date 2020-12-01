#!/usr/bin/env bash

set -e
set -u

VERSION="2020.11.3"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="b26663bf5933d38967f26c5b20770a3b0f1053b6dd503634cb30485fbbaac00d"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
