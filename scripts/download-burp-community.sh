#!/usr/bin/env bash

set -e
set -u

VERSION="2023.4.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="b32f6983b1f612ed35b47b836121a60259be63520207f5669c2477aa53d12bcf"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
