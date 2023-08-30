terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "kpa23-instructor-state-s3-tfstate"
    key            = "state/instructor-networking-state.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "kpa23-instructor-state-db-tfstate"
  }
}

provider "aws" {
  region = var.aws_region
}