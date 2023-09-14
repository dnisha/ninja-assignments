output "ninja_vpc_id" {
  value = module.network.ninja_vpc_id
}

output "pub_subnet_id" {
  value = module.network.pub_subnet_id
}

output "priv_subnet_ids" {
value = module.network.priv_subnet_ids
}

output "sg_name" {
  value = module.security.sg_name
}
