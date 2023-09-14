variable "vpc_id" {
  type    = string
  default = "vpc-0fc9060dc73840db8"
}

variable "pub_sg_list" {
  type    = list(string)
  default = ["ninja-pub-sg"]
}

