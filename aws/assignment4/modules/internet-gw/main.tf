resource "aws_internet_gateway" "ninja_igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "ninja-igw"
  }
}