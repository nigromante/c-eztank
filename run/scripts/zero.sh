#!/usr/bin/env bash

mkdir -p ./{release,debug}/{bin,libs/{bin,include}}

cp ./scripts/run.sh ./release
cp ./scripts/run.sh ./debug
