variable "subnet_cidr" {
  type    = string
  default = "10.0.0.0/24"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "instance_cfg" {
  type = object({
    ami           = string
    instance_type = string
    key_name      = string
  })
  default = (
    {
      ami           = "ami-0f5ee92e2d63afc18"
      instance_type = "t2.micro"
      key_name      = "gone-servers"
    }
  )
}
