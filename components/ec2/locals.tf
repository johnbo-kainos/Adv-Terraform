locals {

  naming_prefix = "${var.project}-${var.environment}"

  public_subnet_cidrs = data.terraform_remote_state.networking.outputs.public_subnet_cidr_blocks

  ec2_web_sg_ingress_rules = [
    {
      type        = "ssh_inbound_public_subnets"
      protocol    = "tcp"
      from_port   = "22"
      to_port     = "22"
      cidr_blocks = "${local.public_subnet_cidrs}"
    },
    {
      type        = "http_inbound_public_subnets"
      protocol    = "tcp"
      from_port   = "80"
      to_port     = "80"
      cidr_blocks = "${local.public_subnet_cidrs}"
    },
  ]

  ec2_web_sg_egress_rules = [
    {
      type        = "default"
      protocol    = "tcp"
      from_port   = "0"
      to_port     = "0"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]

  ec2_mgmt_sg_ingress_rules = [
    {
      type        = "ssh_inbound_public_subnets"
      protocol    = "tcp"
      from_port   = "22"
      to_port     = "22"
      cidr_blocks = "${var.trusted_subnets}"
    },

  ]

  ec2_mgmt_sg_egress_rules = [
    {
      type        = "default"
      protocol    = "tcp"
      from_port   = "0"
      to_port     = "0"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]

}