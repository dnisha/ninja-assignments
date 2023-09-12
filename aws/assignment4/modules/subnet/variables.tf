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

variable "subnet_cfg" {
  type = list(map(any))
  default = [
    {
      name = "ninja-pub-sub-01"
      cidr = "10.0.0.0/24"
      az = "ap-south-1a"
    },
    {
      name = "ninja-pub-sub-02"
      cidr = "10.0.1.0/24"
      az = "ap-south-1b"
    }
  ]
}

