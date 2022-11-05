#!/bin/bash
cd ..

R -e 'devtools::document(); devtools::build()'

cd badger

