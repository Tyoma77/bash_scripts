#!/bin/bash

find `pwd` -maxdepth 1 -type f -mtime +1 -regex ".*\(tar\|gz\|zip\|rar\)$" | xargs rm -f
