output "ninja_subnet_id" {
  value = aws_subnet.ninja_subnet[*].id
}
