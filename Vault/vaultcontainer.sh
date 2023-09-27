#!/bin/bash
export VAULT_ADDR='http://localhost:8200'
 
# docker run -d --rm --name vault-server  \
#     --cap-add=IPC_LOCK -p 8200:8200 \
#     -e 'VAULT_DEV_ROOT_TOKEN_ID=123'    \
#     -e 'VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200'  \
#     vault:1.13.3 

docker run --cap-add=IPC_LOCK -e 'VAULT_LOCAL_CONFIG={"storage": {"file": {"path": "/vault/file"}}, "listener": [{"tcp": { "address": "0.0.0.0:8200", "tls_disable": true}}], "default_lease_ttl": "168h", "max_lease_ttl": "720h", "ui": true, "log_level": "info", "log_file": "/vault/logs/vault.log"}' \
    -v /Users/deepaknishad/vault:/vault/logs    \
    -p 8200:8200 vault:1.13.3 server

# To enable audit log
# vault audit enable file file_path=/vault/logs/vault.log