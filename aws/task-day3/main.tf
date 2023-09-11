resource "aws_vpc" "ninjaVpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "ninjaVpc"
  }
}

resource "aws_subnet" "ninjaSubnet" {
  vpc_id     = aws_vpc.ninjaVpc.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "ninjaSubnet"
  }
}

resource "aws_instance" "ninja_instance" {
  ami           = var.instance_cfg.ami
  instance_type = var.instance_cfg.instance_type
  key_name      = var.instance_cfg.key_name
  subnet_id     = aws_subnet.ninjaSubnet.id

  tags = {
    Name = "my-ec2"
  }
}