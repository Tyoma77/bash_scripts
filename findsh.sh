#!/bin/bash

find `pwd` -maxdepth 1 -type f -regex ".*\(sh\)$" -printf '%f\n' | sed 's/\.sh//'
