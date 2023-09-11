wget https://releases.hashicorp.com/vault/1.14.0/vault_1.14.0_linux_arm64.zip

export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN='hvs.vVjQVk5Lhhmy6NPUGlj4dpON'

vault kv put my/path key1=value1
vault kv get my/path
vault kv delete my/path


Enable secret engin path :-
vault secrets enable -path=my kv

Disable secret engin path :-
vault secrets disable aws

Unseal command:-
vault operator init

Unseal Key 1: i+pqJ1tMQ4tzpeRFHZDH2sdrC36XFtGT6yAuP/jqxbg4
Unseal Key 2: lfOhjxIAMI3UJKzxGtod0nMFKsAQp3PptEqWJRWbMo9Q
Unseal Key 3: EQ7raycmmlMakS5iMs/gHpiivyiHL30reZlDoc5TQtMb
Unseal Key 4: 62eX8zs7NDBb9xYQzhzHdJrcQWg9Nj9OaJEFAlwFzoH2
Unseal Key 5: Ys2NVjV97SJKuJZkSQJcACx1DZNE2PS6zgSkzlNlu24u

Initial Root Token: hvs.nPaiGjFw8HMPgFf3GG1tk4Cd