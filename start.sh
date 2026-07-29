#!/usr/bin/env bash

cd run && ./scripts/zero.sh && cd ..

cd eztank &&  rmk0 && rmk && rmki && cd ..
cd exe    &&  rmk0 && rmk && rmki && cd ..

cd package && ./mkpkg.sh && cd ..
