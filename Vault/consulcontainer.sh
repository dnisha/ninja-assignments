#!/bin/bash

docker run \
    --rm \
    -p 8500:8500 \
    -p 8600:8600/udp \
    --network=vault_vault-net  \
    --name=consul \
    consul:1.15.1 agent -server -ui -node=server-1 -bootstrap-expect=1 -client=0.0.0.0
