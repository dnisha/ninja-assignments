variable "vpc_id" {
  type    = string
  default = "vpc-0fc9060dc73840db8"
}

# variable "vault_instance" {
#   type    = list(string)
#   default = ["i-0ccb628dc7f1bf799", "i-0ccb628dc7f1bf799"]
# }

variable "vault_subnet_list" {
  type    = list(string)
  default = ["subnet-04dffad7706297237", "subnet-05b73760f13f91dca"]
}

variable "vault_ami" {
  type    = string
  default = "ami-0b8323d51e0d7eff5"
}

variable "public_sg_list" {
  type    = list(string)
  default = ["sg-09decdb19debd6a3a"]
}

variable "vault_instance" {
  type = list(object({
    id = string
  }))
  default = [{ id = "123" }, { id = "456" }]
}