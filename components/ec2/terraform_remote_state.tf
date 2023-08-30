data "terraform_remote_state" "networking" {
  backend = "s3"
  config = {
    region = var.aws_region
    bucket = var.s3_state_bucket
    key    = "state/instructor-networking-state.tfstate"
  }
}
