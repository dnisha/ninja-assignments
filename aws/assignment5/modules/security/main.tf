resource "aws_security_group" "ninga_pub_sg" {
  name        = var.security_group.name
  description = "Security group for ${var.security_group.name}"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.security_group.ingress
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  dynamic "egress" {
    for_each = var.security_group.egress
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }
}
