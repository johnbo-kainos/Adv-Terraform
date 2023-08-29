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

variable "instance_ami_id" {
  description = "EC2 instances AMI ID"
}

variable "web_subnet_ids" {
  type        = list(string)
  description = "List of private web subnets ids."
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnets ids."
}

variable "vpc_id" {
  type        = string
  description = "VPC ID."
}

variable "sg_inbound_port" {
  type        = number
  description = "List of private subnets."
  default     = 80
}

variable "user_data_file" {
  type        = string
  description = "User data for instance"
}

variable "keypair" {
  description = "Public keypair for SSH"
  
}

variable "ec2_sg_ingress_rules" {
  type = list(object({
    type        = string
    protocol    = string
    from_port   = string
    to_port     = string
    cidr_blocks = list(string)
  }))
  default = []
}

variable "ec2_sg_egress_rules" {
  type = list(object({
    type        = string
    protocol    = string
    from_port   = string
    to_port     = string
    cidr_blocks = list(string)
  }))
  default = []
}
