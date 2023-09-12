resource "aws_route_table_association" "public_subnet_association" {
  count = length(var.subnet_ids)
  subnet_id      = var.subnet_ids[count.index]
  route_table_id = var.rt_id
}
