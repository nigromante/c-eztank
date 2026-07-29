#!/usr/bin/env bash

clear 

cd run && ./scripts/zero.sh && cd ..

cd eztank &&  rmka && cd ..
cd exe    &&  rmka && cd ..

if [[ "$1" == "all" ]]; then


    echo
    echo "Package create ..."

    cd package && ./mkpkg.sh &&  cd ..

    echo
    echo "Package install ..."
    cd package && sudo dpkg -i ./eztank.deb  &&  cd ..
    echo
    sudo dpkg -s eztank-dev
    echo
    sudo dpkg -L eztank-dev

    echo
    echo "which eztank:"
    which eztank

    echo
    echo "Running ..."
    time {
        eztank
    }

fi

