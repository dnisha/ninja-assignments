variable "vpc_id" {
  type    = string
  default = "vpc-0fc9060dc73840db8"
}

variable "sg_id" {
  type    = string
  default = "123"
}

variable "security_group" {
  type = object({
    name = string

    ingress = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)

    }))

    egress = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)

    }))

  })

  default = {
    name = "ninga_pub_sg"

    ingress = [
      {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      },
      {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }]

    egress = [
      {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
  }
}

variable "nacl_rules" {
  type = list(object({
    protocol       = string
    rule_action    = string
    cidr_block     = string
    from_port      = number
    to_port        = number
    egress         = bool
  }))

  default = [{
    protocol       = "tcp"
    rule_action    = "allow"
    cidr_block     = "0.0.0.0/0"
    from_port      = 8200
    to_port        = 8200
    egress         = false
    },
    {
      protocol       = "tcp"
      rule_action    = "allow"
      cidr_block     = "0.0.0.0/0"
      from_port      = 8201
      to_port        = 8201
      egress         = false
  }]
}
