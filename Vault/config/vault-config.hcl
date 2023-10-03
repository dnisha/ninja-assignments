/*
storage "file" {
  path = "/vault/file"
}
*/

storage "consul" {
  address = "consul:8500"
  path    = "vault/"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = true
}

replication {
  performance_mode = "enable"
  dr {
    cluster_addr = "https://vault-primary:8200" 
    seal_wrap = true  
  }
}


default_lease_ttl = "168h"
max_lease_ttl = "720h"
ui = true
log_level = "info"
log_file = "/vault/logs/vault.log"
