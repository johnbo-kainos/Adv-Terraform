variable "region" {
  type        = string
  description = "Deployment region for this module"
}

variable "project" {
  type        = string
  description = "Project Name"
}

variable "environment" {
  type        = string
  description = "Deployment environment for this module"
}

variable "instance_count" {
  type        = number
  description = "Numner of EC2 instances"
}

variable "instance_type" {
  type        = string
  description = "Numner of EC2 instances"
  default     = "t2.micro"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnets."
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets."
}

variable "vpc_id" {
type        = string
  description = "List of private subnets."
}

variable "sg_inbound_port" {
type        = number
  description = "List of private subnets."
}
