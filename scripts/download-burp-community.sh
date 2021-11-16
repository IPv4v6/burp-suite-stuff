#!/usr/bin/env bash

set -e
set -u

VERSION="2021.10.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="e1d9ff3424d1cce65eb6eff396a705a3285de24a04a8db65ca9fe8ef7948ffa7"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
