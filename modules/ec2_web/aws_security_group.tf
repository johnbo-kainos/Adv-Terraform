resource "aws_security_group" "ec2_sg" {
  name        = "${var.naming_prefix}-ec2-sg"
  description = "Security group for EC2 instances"
  vpc_id      = var.vpc_id

  // Ingress rules to allow incoming traffic from the public subnets (ALB traffic)
  ingress {
    from_port   = var.sg_inbound_port
    to_port     = var.sg_inbound_port
    protocol    = "tcp"
    cidr_blocks = [var.public_subnets]
  }

  // Allow all outgoing traffic to Internet and public subnets
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" // Allow all outgoing traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

}