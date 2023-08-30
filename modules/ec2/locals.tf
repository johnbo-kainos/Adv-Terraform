locals {

  naming_prefix = "${var.project}-${var.environment}-${var.instance_role}"

  default_tags = {
    Project     = var.project
    Component   = "EC2"
    Environment = var.environment
  }
}
