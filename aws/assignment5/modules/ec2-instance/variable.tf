variable "instance_map" {
  type = map(object({
    ami        = string
    key_name = string
    associate_public_ip = bool
  }))

  default = {
    "instance-pub-sub-01" = {
      ami        = "ami-0f5ee92e2d63afc18"
      key_name = "gone-servers"
      associate_public_ip = true
    },
    "instance-pub-sub-02" = {
      ami        = "ami-0f5ee92e2d63afc18"
      key_name = "gone-servers"
      associate_public_ip = true
    }
  }
}

variable "security_groups" {
  type    = set(string)
  default = ["demo-sg"]
}

variable "subnet_id" {
  type    = string
  default = "123"
}