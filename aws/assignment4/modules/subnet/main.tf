resource "aws_subnet" "ninja_subnet" {
  count = length(var.subnet_cfg)
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cfg[count.index]["cidr"]
  availability_zone = var.subnet_cfg[count.index]["az"]

  tags = {
    Name = var.subnet_cfg[count.index]["name"]
  }
}