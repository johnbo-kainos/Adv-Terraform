locals {

  default_tags = {
    Project     = var.project
    Component   = var.component
    Environment = var.environment
  }

  bucket_name         = "${var.project}-${var.environment}-s3-tfstate"
  dynamodb_table_name = "${var.project}-${var.environment}-db-tfstate"
}