module "myVpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}


module "mySubnet" {
  source      = "./modules/subnet"
  vpc_id      = module.myVpc.ninja_vpc_id
  subnet_cidr = var.subnet_cidr
}