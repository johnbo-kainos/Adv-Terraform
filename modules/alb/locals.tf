locals {
  

  naming_prefix = "${var.project}-${var.environment}"
  
    default_tags = {
      Project     = var.project
      Component   = "ALB"
      Environment = var.environment
    }
}