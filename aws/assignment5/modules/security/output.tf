output "sg_id" {
  value = toset([aws_security_group.ninga_pub_sg.id])
}

