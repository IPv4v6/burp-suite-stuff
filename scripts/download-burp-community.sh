#!/usr/bin/env bash

set -e
set -u

VERSION="2025.9.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="71a607e467649e73bf6ae4296cd3b5a2010754f8b4ecba0ff1198c6cd565cf0a"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
