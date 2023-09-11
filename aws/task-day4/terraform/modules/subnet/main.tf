resource "aws_subnet" "ninjaSubnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "ninjaSubnet"
  }
}