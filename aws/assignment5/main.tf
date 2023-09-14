module "network" {
  source          = "./modules/network"
  vpc_cidr        = var.vpc_cidr
  pub_subnet_map  = var.pub_subnet_map
  priv_subnet_map = var.priv_subnet_map
}

module "security" {
  source = "./modules/security"
  vpc_id = module.network.ninja_vpc_id
}

module "instance" {
  source = "./modules/ec2-instance"
  security_groups =  module.security.sg_name
  pub_subnet_id = module.network.pub_subnet_id
}

