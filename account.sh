#!/bin/bash

cleos create key --to-console
cleos wallet create -n fsl --to-console
cleos wallet import -n fsl
nodeos --extract-genesis-json genesis.json

## vim genesis.json
## vim config.ini
