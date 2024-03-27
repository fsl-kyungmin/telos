#!/bin/bash

cleos create key --to-console
cleos wallet create -n fsl --to-console
cleos wallet import -n fsl
nodeos --extract-genesis-json genesis.json

sleep 2

## vim genesis.json
## vim config.ini

###

#Private key: 5Hw2wwXQ4QCByh6JXwHNY7NG9m3pxhscMPxLvdgtwNJGA2YJWJA
#Public key: EOS6eTFjxUkU2U493GNwVyNSWkE8rTzLzJQ9DdR1qCimYyBvtMwQA
#"/usr/bin/keosd" launched
#Creating wallet: fsl
#Save password to use in the future to unlock this wallet.
#Without password imported keys will not be retrievable.
#"PW5JPQEiSSzkCoPY8JmNfew3pSuDK4mvNmghjb5vNQ3rGa69XJAr2"
#private key: imported private key for: EOS6eTFjxUkU2U493GNwVyNSWkE8rTzLzJQ9DdR1qCimYyBvtMwQA