FROM ubuntu:22.04

RUN apt update && \
    apt-get -y install wget git cmake curl vim

RUN apt-get -y install schedtool

RUN mkdir -p /telos/nodes/fsl
WORKDIR /telos/nodes/fsl
RUN curl -L https://api.github.com/repos/telosnetwork/node-template/tarball/master | tar -xvz --strip=1

RUN wget https://github.com/AntelopeIO/leap/releases/download/v3.1.2/leap-3.1.2-ubuntu22.04-x86_64.deb
RUN apt-get -y  install ./leap-3.1.2-ubuntu22.04-x86_64.deb

RUN mkdir -p /telos/leap/fsl
RUN cp -a /usr/bin/nodeos /telos/leap/fsl

COPY genesis.json genesis.json
COPY config.ini config.ini


ENTRYPOINT [ "sleep", "infinity" ]