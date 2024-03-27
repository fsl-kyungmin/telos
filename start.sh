#!/bin/bash

nohup nodeos --disable-replay-opts --extract-genesis-json genesis.json --enable-stale-production --data-dir ./data --config-dir .  >> "nodeos.log" 2>&1 &
PID="$!"
echo "nodeos started with pid $PID"

if [[ "$PIN_CPU" == "true" ]]; then
  command -v taskset >/dev/null 2>&1 && taskset -cp $CPU $PID && echo "taskset called..."
  command -v schedtool >/dev/null 2>&1 && schedtool -B $PID && echo "schedtool called..."
fi