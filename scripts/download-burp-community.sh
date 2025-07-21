#!/usr/bin/env bash

set -e
set -u

VERSION="2025.7.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="ad22884e4d0ed47cd61345313d9a67127683369931542c1bfa2ab71a175dbed9"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
