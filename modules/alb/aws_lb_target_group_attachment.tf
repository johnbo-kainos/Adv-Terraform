resource "aws_lb_target_group_attachment" "loadbalancer_tg_attachment" {
  count = length(var.target_group_instance_ids)

  target_group_arn = aws_lb_target_group.loadbalancer_tg.arn
  target_id        = var.target_group_instance_ids[count.index]
  port             = var.target_group_port
}