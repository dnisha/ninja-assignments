variable "cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}

variable "vpc_id" {
  type = string
}

variable "availability_zone" {
  type    = string
}

variable "subnet_type" {
  type    = string
}
