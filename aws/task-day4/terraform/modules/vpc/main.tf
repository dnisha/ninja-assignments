resource "aws_vpc" "ninjaVpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "ninjaVpc"
  }
}
