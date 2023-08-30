module "networking" {
  source = "../../modules/networking"

  region               = var.aws_region
  project              = var.project
  environment          = var.environment
  internal_domain_name = var.internal_domain_name
  vpc_cidr_block       = var.vpc_cidr_block
  public_subnets       = var.public_subnets
  web_subnets          = var.web_subnets
  rds_subnets          = var.rds_subnets
  nat_gateway_count    = var.nat_gateway_count

}
