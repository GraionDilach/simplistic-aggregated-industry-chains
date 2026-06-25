#!/bin/bash

rm ./*.nml

gcc -C -E -nostdinc -x c-header ./src/simplistic-industry-chains.pnml > ./simplistic-industry-chains.nml

nmlc --no-extra-zoom  --clear-orphaned -c ./simplistic-industry-chains.nml
