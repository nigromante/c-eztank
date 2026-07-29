#!/usr/bin/env bash


mkdir -p ./eztank/DEBIAN
mkdir -p ./eztank/usr/{bin,include,lib/x86_64-linux-gnu}

cp ./control  ./eztank/DEBIAN

cp ../run/release/bin/eztank_test.exe ./eztank/usr/bin
cp ../run/release/libs/include/* ./eztank/usr/include
cp ../run/release/libs/bin/* ./eztank/usr/lib/x86_64-linux-gnu


dpkg-deb --build eztank
