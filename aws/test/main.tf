module "ec2" {
  source        = "s3::https://terraform-module-01.s3.ap-south-1.amazonaws.com/ec2.zip"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  name          = var.name
  key_name      = var.key_name
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-south-1a", "ap-south-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}