#!/usr/bin/env bash
set -e
TAG="crimson-forest-eager-anchor"
LIB="pure-triode.a"
URL="https://github.com/maiafyeld/sacredcavern/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
