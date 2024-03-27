#!/bin/bash

nohup nodeos --disable-replay-opts --enable-stale-production --data-dir ./data --config-dir . --extract-genesis-json genesis.json >> "nodeos.log" 2>&1 &
PID="$!"
echo "nodeos started with pid $PID"
