locals {
  instance_type = "t2.micro"
}

resource "aws_instance" "public_ec2" {
  for_each                    = var.pub_instance_map
  ami                         = each.value.ami
  instance_type               = local.instance_type
  subnet_id                   = var.pub_subnet_id
  key_name                    = each.value.key_name
  vpc_security_group_ids      = var.security_groups
  associate_public_ip_address = true
  tags = {
    Name = each.key
  }
}
