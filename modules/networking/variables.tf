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

variable "internal_domain_name" {
  type        = string
  description = "Internal domain name"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block of the VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnets."
}

variable "web_subnets" {
  type = map(object({
    cidr_block       = string
    availability_zone = string
  }))
  default = {
    subnet1 = {
      cidr_block       = "10.0.100.0/24"
      availability_zone = "eu-west-1a"
    }
  }
}

variable "public_subnets" {
  type = map(object({
    cidr_block       = string
    availability_zone = string
  }))
  default = {
    subnet1 = {
      cidr_block       = "10.0.1.0/24"
      availability_zone = "eu-west-1a"
    }
  }
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets."
}

variable "nat_gateway_count" {
  type        = number
  description = "Number of NAT Gateways"
}
