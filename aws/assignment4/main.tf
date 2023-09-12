module "elastic_ip" {
  source = "./modules/elastic-ip"
}
module "ninja_igtw" {
  source = "./modules/internet-gw"
  vpc_id = module.ninja_vpc.ninja_vpc_id
}

module "ninja_nat_gtw" {
  source    = "./modules/nat-gw"
  ninja_eip = module.elastic_ip.aws_eip
  subnet_id = module.ninja_public_subnet.ninja_subnet_id[0]
}

module "ninja_vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "ninja_public_subnet" {
  source            = "./modules/subnet"
  vpc_id            = module.ninja_vpc.ninja_vpc_id
  availability_zone = var.availability_zone
  subnet_cfg       = var.public_subnet_list
}

module "ninja_private_subnet" {
  source            = "./modules/subnet"
  vpc_id            = module.ninja_vpc.ninja_vpc_id
  availability_zone = var.availability_zone
  subnet_cfg       = var.private_subnet_list
}

module "ninja_private_rt" {
  source  = "./modules/route-table"
  vpc_id  = module.ninja_vpc.ninja_vpc_id
  rt_type = "private"
}

module "ninja_public_rt" {
  source  = "./modules/route-table"
  vpc_id  = module.ninja_vpc.ninja_vpc_id
  rt_type = "public"
}
module "ninja_private_route" {
  source         = "./modules/route"
  route_table_id = module.ninja_private_rt.rt_id
  igw_id         = module.ninja_nat_gtw.nat_gw_id
}

module "ninja_public_route" {
  source         = "./modules/route"
  route_table_id = module.ninja_public_rt.rt_id
  igw_id         = module.ninja_igtw.igw_id
}

module "ninja_private_rt_association" {
  source    = "./modules/route-table-association"
  subnet_ids = module.ninja_private_subnet.ninja_subnet_id
  rt_id     = module.ninja_private_rt.rt_id
}

module "ninja_public_rt_association" {
  source    = "./modules/route-table-association"
  subnet_ids = module.ninja_public_subnet.ninja_subnet_id
  rt_id     = module.ninja_public_rt.rt_id
}

