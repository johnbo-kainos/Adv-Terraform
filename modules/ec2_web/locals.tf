locals {

  naming_prefix = "${var.project}-${var.environment}"

  default_tags = {
    Project     = var.project
    Component   = "EC2 Webservers"
    Environment = var.environment
  }
}
