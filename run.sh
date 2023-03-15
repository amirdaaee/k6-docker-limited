#!/bin/sh
tc qdisc add dev eth0 root tbf rate $SPEED latency $LATENCY burst $BURST
k6 $@
