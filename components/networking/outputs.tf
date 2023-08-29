output "vpc_id" {
    value = module.networking.vpc_id
}

output "public_subnet_ids" {
    value = module.networking.public_subnets_ids
}

output "web_subnet_ids" {
    value = module.networking.web_subnets_ids
}

output "rds_subnet_ids" {
    value = module.networking.rds_subnets_ids
}

output "public_subnet_cidr_blocks" {
    value = module.networking.public_subnets_cidr
}

output "web_subnet_cidr_blocks" {
    value = module.networking.web_subnets_cidr
}

output "rds_subnet_cidr_blocks" {
    value = module.networking.rds_subnets_cidr
}