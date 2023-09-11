resource "aws_route_table" "ninja_rt" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.rt_type}"
  }
}