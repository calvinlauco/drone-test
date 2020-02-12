#!/usr/bin/env bash

set -e

echo 'Listen'
nc -l 10000 &

netstat -anp

echo 'Send'
echo 'hello' | nc 127.0.0.1 10000
echo 'Wait'

wait
