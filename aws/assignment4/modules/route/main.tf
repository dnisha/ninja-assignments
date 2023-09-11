resource "aws_route" "subnet_route" {
  route_table_id         = var.route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.igw_id
}
