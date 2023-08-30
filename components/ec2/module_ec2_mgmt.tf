module "ec2_mgmt_server" {
  source = "../../modules/ec2"

  region               = var.aws_region
  project              = var.project
  environment          = var.environment
  vpc_id               = data.terraform_remote_state.networking.outputs.vpc_id
  subnet_ids           = data.terraform_remote_state.networking.outputs.public_subnet_ids
  instance_count       = var.mgmt_instance_count
  instance_type        = var.mgmt_instance_type
  instance_ami_id      = data.aws_ami.ubuntu.id
  instance_role        = "mgmt-ec2"
  user_data_file       = file("${path.module}/ami_user_data/ubuntu/mgmt_server_init.sh")
  keypair              = aws_key_pair.ssh_key.key_name
  public_ip_enabled    = true
  ec2_sg_ingress_rules = local.ec2_mgmt_sg_ingress_rules
  ec2_sg_egress_rules  = local.ec2_mgmt_sg_egress_rules

}

