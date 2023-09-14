output "sg_name" {
value = values(aws_security_group.ninga_pub_sg).*.id
}

