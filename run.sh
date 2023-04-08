#!/bin/sh
./limit-tc.sh start
./limit-tc.sh status
k6 $@
