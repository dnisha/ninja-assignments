module "network" {
  source          = "./modules/network"
  vpc_cidr        = var.vpc_cidr
  pub_subnet_map  = var.pub_subnet_map
  priv_subnet_map = var.priv_subnet_map
}

module "pub_security" {
  source         = "./modules/security"
  vpc_id         = module.network.ninja_vpc_id
  security_group = var.pub_ninja_sg
}

module "priv_security" {
  source         = "./modules/security"
  vpc_id         = module.network.ninja_vpc_id
  security_group = var.priv_ninja_sg
}

module "batian_instance" {
  source          = "./modules/ec2-instance"
  security_groups = module.pub_security.sg_id
  subnet_id       = module.network.pub_subnet_id
  instance_map    = var.batian_instance_map
}

module "private_instance" {
  source          = "./modules/ec2-instance"
  security_groups = module.priv_security.sg_id
  subnet_id       = module.network.priv_subnet_id
  instance_map    = var.private_instance_map
}

