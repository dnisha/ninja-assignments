module "network" {
  source         = "./modules/network"
  vpc_cidr       = var.vpc_cidr
  pub_subnet_map = var.pub_subnet_map
  priv_subnet_map = var.priv_subnet_map
  }

