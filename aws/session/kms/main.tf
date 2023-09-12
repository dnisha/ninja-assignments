resource "aws_kms_key" "vault_unseal_key" {
  description             = "KMS key for HashiCorp Vault auto-unseal"
  deletion_window_in_days = 30
}
