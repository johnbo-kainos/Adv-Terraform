locals {

  naming_prefix = "${var.project}-${var.environment}"

  ec2_web_sg_ingress_rules = [
    {
      type        = "ssh"
      protocol    = "tcp"
      from_port   = "22"
      to_port     = "22"
      cidr_blocks = data.terraform_remote_state.networking.outputs.public_subnet_cidr_blocks
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
  
}