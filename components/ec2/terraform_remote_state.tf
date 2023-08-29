data "terraform_remote_state" "networking" {
  backend = "s3"
  config = {
    region = var.aws_region
    bucket = "kpa23-instructor-s3-tfstate"
    key    = "state/instructor-networking-state.tfstate"
  }
}
