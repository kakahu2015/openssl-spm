#!/bin/bash

set -e

cd $(dirname $0)/..

if [ ! -f .root ]; then
    echo "[*] malformated project structure"
    exit 1
fi

if [ -z "$1" ]; then
    for i in {1..10}; do
        OPENSSL_TAG=$(wget -q -O- https://api.github.com/repos/openssl/openssl/releases/latest | jq -r '.tag_name')
        if [ -n "$OPENSSL_TAG" ]; then
            break
        fi
        sleep 10
    done

    if [ -z "$OPENSSL_TAG" ]; then
        echo "[*] failed to get latest openssl tag"
        exit 1
    fi
else
    OPENSSL_TAG=$1
fi
echo "[*] building for openssl tag: $OPENSSL_TAG"

XCFRAMEWORK_PATH_ZIP="$(pwd)/build/libssl.xcframework.zip"
mkdir -p "$(dirname "$XCFRAMEWORK_PATH_ZIP")"
echo "[*] output: $XCFRAMEWORK_PATH_ZIP"

./Script/build-xcframework.sh $OPENSSL_TAG $XCFRAMEWORK_PATH_ZIP
./Script/build-manifest.sh $XCFRAMEWORK_PATH_ZIP

echo "[*] done $(basename $0)"
