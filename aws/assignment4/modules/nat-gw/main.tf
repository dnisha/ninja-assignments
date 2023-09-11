resource "aws_nat_gateway" "ninja_nat_gateway" {
  allocation_id = var.ninja_eip
  subnet_id     = var.subnet_id
}