#!/usr/bin/env bash

set -e
set -u

VERSION="2022.3.7"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="a424ff30772e6c1626d48646baf2d7bf73ef6dc13d685182ad792268b0d9088b"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
