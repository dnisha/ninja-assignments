variable "pub_instance_map" {
  type = map(object({
    ami      = string
    key_name = string
  }))

  default = {
    "instance-pub-sub-01" = {
      ami      = "ami-0f5ee92e2d63afc18"
      key_name = "gone-servers"
    },
    "instance-pub-sub-02" = {
      ami      = "ami-0f5ee92e2d63afc18"
      key_name = "gone-servers"
    }
  }
}

variable "security_groups" {
  type    = list(string)
  default = ["demo-sg"]
}

variable "pub_subnet_id" {
  type    = string
  default = "123"
}