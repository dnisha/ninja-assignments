
listener "tcp" {
  address       = "0.0.0.0:8200" 
  cluster_address  = "127.0.0.1:8201"
  tls_disable   = 1                 
}


storage "consul" {
  address = "127.0.0.1:8500"
  path    = "vault/"
}


api_addr = "http://127.0.0.1:8200"
cluster_addr = "http://127.0.0.1:8201"
ui = true
