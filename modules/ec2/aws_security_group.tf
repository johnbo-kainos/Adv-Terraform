resource "aws_security_group" "ec2_sg" {
  name        = "${local.naming_prefix}-ec2-sg"
  description = "Security group for EC2 instances"
  vpc_id      = var.vpc_id

}

resource aws_security_group_rule "ec2_ingress" {

  for_each = var.ec2_sg_ingress_rules

  type              = each.value.type
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  security_group_id = aws_security_group.ec2_sg.id
  
}

resource aws_security_group_rule "ec2_egress" {

  for_each = var.ec2_sg_egress_rules

  type              = each.value.type
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  security_group_id = aws_security_group.ec2_sg.id

}