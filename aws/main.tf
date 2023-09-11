resource "aws_vpc" "ninja_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "ninja-vpc-01"
  }
}

resource "aws_subnet" "ninja_public_subnet" {
  vpc_id            = aws_vpc.ninja_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "ninja-pub-sub-01"
  }
}

resource "aws_eip" "ninja_eip" {}

resource "aws_internet_gateway" "ninga_gw" {
  vpc_id = aws_vpc.ninja_vpc.id

  tags = {
    Name = "main"
  }
}

resource "aws_route_table" "ninga_public_rt" {
  vpc_id = aws_vpc.ninja_vpc.id

  tags = {
    Name = "ninja-public-rt"
  }
}

resource "aws_route" "public_subnet_route" {
  route_table_id         = aws_route_table.ninga_public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.ninga_gw.id
}

resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.ninja_public_subnet.id
  route_table_id = aws_route_table.ninga_public_rt.id
}

resource "aws_subnet" "ninja_private_subnet" {
  vpc_id            = aws_vpc.ninja_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "ninja-priv-sub-01"
  }
}

resource "aws_route_table" "ninja_private_rt" {
  vpc_id = aws_vpc.ninja_vpc.id

  tags = {
    Name = "ninja-private-rt"
  }
}

resource "aws_route" "private_subnet_route" {
  route_table_id         = aws_route_table.ninja_private_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.ninja_nat_gateway.id

}

resource "aws_route_table_association" "private_subnet_association" {
  subnet_id      = aws_subnet.ninja_private_subnet.id
  route_table_id = aws_route_table.ninja_private_rt.id
}

resource "aws_nat_gateway" "ninja_nat_gateway" {
  allocation_id = aws_eip.ninja_eip.id
  subnet_id     = aws_subnet.ninja_public_subnet.id
}