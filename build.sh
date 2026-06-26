#!/bin/bash

rm ./*.nml

gcc -C -E -nostdinc -x c-header ./src/simplistic-industry-chains.pnml | sed 's/%%/\n/g' > ./simplistic-industry-chains.nml

nmlc  -p DOS --no-extra-zoom  --clear-orphaned -c ./simplistic-industry-chains.nml
