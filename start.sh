#!/bin/bash

nohup nodeos --disable-replay-opts --extract-genesis-json genesis.json --enable-stale-production --data-dir ./data --config-dir .  >> "nodeos.log" 2>&1 &
PID="$!"
echo "nodeos started with pid $PID"
