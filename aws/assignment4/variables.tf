variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "availability_zone" {
  type    = string
  default = "ap-south-1a"
}

variable "public_subnet_list" {
  type = list(map(any))
  default = [
    {
      name = "ninja-pub-sub-01"
      cidr = "10.0.0.0/24"
      az   = "ap-south-1a"
    },
    {
      name = "ninja-pub-sub-02"
      cidr = "10.0.1.0/24"
      az   = "ap-south-1b"
    }
  ]
}

variable "private_subnet_list" {
  type = list(map(any))
  default = [
    {
      name = "ninja-private-sub-01"
      cidr = "10.0.2.0/24"
      az   = "ap-south-1a"
    },
    {
      name = "ninja-private-sub-02"
      cidr = "10.0.3.0/24"
      az   = "ap-south-1b"
    }
  ]
}
