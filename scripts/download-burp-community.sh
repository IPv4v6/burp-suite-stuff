#!/usr/bin/env bash

set -e
set -u

VERSION="2023.10.3.4"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="31e7507713282bb322345b17b7cd3b0f407e802d433424547ef6f0f171728976"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
