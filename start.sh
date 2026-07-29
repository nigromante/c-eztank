#!/usr/bin/env bash


cd run && ./scripts/zero.sh && cd ..

cd eztank &&  rmka && cd ..
cd exe    &&  rmka && cd ..

echo "$@"

if [[ "$1" == "all" ]]; then


    echo "package ..."

    cd package && ./mkpkg.sh &&  sudo dpkg -i ./eztank.deb  &&  cd ..

    sudo dpkg -l | grep eztank-dev

    which eztank_test.exe

    time {
        eztank_test.exe
    }

fi

