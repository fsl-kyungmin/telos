#!/bin/bash

OwnerKey="$1"
ActiveKey="$1"

cleos create account eosio eosio.token $OwnerKey $ActiveKey
cleos create account eosio eosio.bpay $OwnerKey $ActiveKey
cleos create account eosio eosio.vpay $OwnerKey $ActiveKey
cleos create account eosio eosio.msig $OwnerKey $ActiveKey
cleos create account eosio eosio.names $OwnerKey $ActiveKey
cleos create account eosio eosio.ram $OwnerKey $ActiveKey
cleos create account eosio eosio.ramfee $OwnerKey $ActiveKey
cleos create account eosio eosio.rex $OwnerKey $ActiveKey
cleos create account eosio eosio.saving $OwnerKey $ActiveKey
cleos create account eosio eosio.stake $OwnerKey $ActiveKey

cd contracts/eosio.token
cleos set contract eosio.token . ./eosio.token.wasm ./eosio.token.abi
cleos push action eosio.token create '["eosio","100000000.0000 TLOS"]' -p eosio.token@active
cleos push action eosio.token issue '["eosio","100000000.0000 TLOS","Issue max supply to eosio"]' -p eosio@active

curl -X POST http://127.0.0.1:8888/v1/producer/schedule_protocol_feature_activations -d '{"protocol_features_to_activate": ["0ec7e080177b2c02b278d5088611686b49d739925a92d9bfcacd7fc6b74053bd"]}' | jq
cd ../eosio.system
cleos set contract eosio . ./eosio.system.wasm ./eosio.system.abi
cleos push action eosio init '[0,"4,TLOS"]' -p eosio@active