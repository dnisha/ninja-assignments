output "aws_eip" {
  value = aws_eip.ninja_eip.id
}

output "ninja_vpc_id" {
  value = aws_vpc.ninja_vpc.id
}

output "pub_subnet_id" {
  description = "Map of public subnet IDs by name"
  value = aws_subnet.pub_ninja_subnet["ninja-pub-sub-01"].id
}

output "priv_subnet_id" {
  description = "Map of private subnet IDs by name"
  value = aws_subnet.priv_ninja_subnet["ninja-priv-sub-01"].id
}

output "igw_id" {
  value = aws_internet_gateway.ninja_igw.id
}

output "pub_rt_id" {
  value = aws_route_table.pub_ninja_rt.id
}

output "priv_rt_id" {
  value = aws_route_table.priv_ninja_rt.id
}