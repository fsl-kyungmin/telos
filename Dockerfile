FROM ubuntu:22.04

RUN apt update && \
    apt-get -y install wget git cmake curl vim jq

RUN apt-get -y install schedtool

RUN mkdir -p /telos/nodes/fsl
WORKDIR /telos/nodes/fsl
RUN curl -L https://api.github.com/repos/telosnetwork/node-template/tarball/master | tar -xvz --strip=1

RUN wget https://github.com/AntelopeIO/leap/releases/download/v3.1.2/leap-3.1.2-ubuntu22.04-x86_64.deb
RUN apt-get -y install ./leap-3.1.2-ubuntu22.04-x86_64.deb

RUN mkdir -p /telos/leap/fsl
RUN cp -a /usr/bin/nodeos /telos/leap/fsl

COPY node_config node_config
COPY config.ini config.ini
COPY start.sh start.sh
COPY account.sh account.sh
COPY account_2.sh account_2.sh
COPY eosio.evm.abi eosio.evm.abi
COPY eosio.evm.wasm eosio.evm.wasm

ENTRYPOINT [ "sleep", "infinity" ]