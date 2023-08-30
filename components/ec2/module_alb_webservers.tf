module "alb_webservers" {
  source = "../../modules/alb"

  project                   = var.project
  environment               = var.environment
  vpc_id                    = data.terraform_remote_state.networking.outputs.vpc_id
  loadbalancer_role         = "webfrontend"
  loadbalancer_subnets      = data.terraform_remote_state.networking.outputs.public_subnet_ids
  listener_port             = 80
  listener_protocol         = "HTTP"
  target_group_instance_ids = module.ec2_webservers.ec2_instance_ids
  target_group_port         = 80
  alb_sg_ingress_rules      = local.alb_web_sg_ingress_rules
  alb_sg_egress_rules       = local.alb_web_sg_egress_rules


}