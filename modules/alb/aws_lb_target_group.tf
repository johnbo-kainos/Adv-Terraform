resource "aws_lb_target_group" "loadbalancer_tg" {
  
  name     = "${local.naming_prefix}-alb-tg"
  port     = var.target_group_port
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

