#!/bin/bash

find `pwd` -maxdepth 1 -type f -name "log*" | xargs rm -f

