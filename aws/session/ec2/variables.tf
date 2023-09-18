variable "ami" {
  type = string
  default = "ami-0f5ee92e2d63afc18"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "subnet_id" {
  type = string
  default = "subnet-09f911215ecffbfe7"
}

variable "name" {
  type = string
  default = "ninja-public-instance"
}

variable "key_name" {
  type = string
  default = "gone-servers"
}
