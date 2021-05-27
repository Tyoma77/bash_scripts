#!/bin/bash
if [ $# -lt 1 ] || [ $# -gt 1 ]
then
	echo "There must be one argument"
	exit 1
else
	echo "The number of arguments is ok"
	exit 0
fi
