variable "aws_region" {
  type = string
}

variable "aws_account_id" {
  type = string
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "web_subnets" {
  type = list(string)
}

variable "web_instance_count" {
  type = number
  default = 1
}

variable "web_instance_type" {
  type = string
  default = "t2.micro"
}