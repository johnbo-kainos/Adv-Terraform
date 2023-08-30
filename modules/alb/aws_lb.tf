resource "aws_lb" "loadbalancer" {
  name               = "${local.naming_prefix}-${var.loadbalancer_role}"
  internal           = var.loadbalancer_internal
  load_balancer_type = var.loadbalancer_type
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = var.loadbalancer_subnets

  enable_deletion_protection = var.enable_deletion_protection

  # access_logs {
  #   bucket  = aws_s3_bucket.lb_logs.id
  #   prefix  = var.loadbalancer_name
  #   enabled = var.enable_lb_logs
  # }

  tags = merge(
    local.default_tags,
    tomap({ "Name" = "${local.naming_prefix}-alb" })
  )
}
