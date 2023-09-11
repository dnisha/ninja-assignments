resource "aws_vpc" "ninja_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "ninja-vpc-01"
  }
}
