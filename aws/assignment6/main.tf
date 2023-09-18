module "network" {
  source          = "./modules/network"
  vpc_cidr        = var.vpc_cidr
  pub_subnet_map  = var.pub_subnet_map
  priv_subnet_map = var.priv_subnet_map
}

module "pub_security" {
  source         = "./modules/security"
  vpc_id         = module.network.ninja_vpc_id
  nacl_rules     = var.pub_nacl_rules
  security_group = var.pub_ninja_sg
  subnet_id_list = module.network.pub_subnet_id_list
}

module "priv_security" {
  source         = "./modules/security"
  vpc_id         = module.network.ninja_vpc_id
  nacl_rules     = var.priv_nacl_rules
  security_group = var.priv_ninja_sg
  subnet_id_list = module.network.priv_subnet_id_list
}

module "batian_instance" {
  source          = "./modules/ec2-instance"
  security_groups = module.pub_security.sg_id
  subnet_id       = module.network.pub_subnet_id
  instance_map    = var.batian_instance_map
}

module "vault_instance" {
  source          = "./modules/ec2-instance"
  security_groups = module.priv_security.sg_id
  subnet_id       = module.network.priv_subnet_id
  instance_map    = var.private_instance_map
}

module "console_instance" {
  source          = "./modules/ec2-instance"
  security_groups = module.priv_security.sg_id
  subnet_id       = module.network.console_subnet_id
  instance_map    = var.console_instance_map
}

module "alb_attach" {
  source = "./modules/alb"
  vpc_id = module.network.ninja_vpc_id
  vault_subnet_list = module.network.vault_subnet_ids
  vault_ami = "ami-0b8323d51e0d7eff5"
  public_sg_list = module.pub_security.sg_id
  vault_instance = module.vault_instance.instance_object
}

