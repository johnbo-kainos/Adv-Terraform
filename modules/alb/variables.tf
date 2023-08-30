variable "project" {
  type        = string
  description = "Project Name"
}

variable "environment" {
  type        = string
  description = "Deployment environment for this module"
}

variable "vpc_id" {
    type = string
    description = "VPC ID"
}

variable "loadbalancer_role" {
    type = string
    description = "Role of ALB"
  
}

variable "loadbalancer_internal" {
    type = bool
    description = "Internal ALB - yes or no"
    default = false
  
}

variable "loadbalancer_type" {
    type = string
    description = "Loadbalancer Type"
    default = "application"
  
}

variable "loadbalancer_subnets" {
    type = list(string)
    description = "List of subnets for loadbalancer"
  
}

variable "enable_deletion_protection" {
    type = bool
    description = "Enabled delete protection on ALB"
    default = false
  
}

variable "listener_port" {
    type = number
    description = "Listener port"
  
}

variable "listener_protocol" {
    type = string
    description = "Listener protocol"
  
}

variable "target_group_instance_ids" {
    type = list(string)
    description = "List of the ec2 instance ids for the target group "
  
}

variable "target_group_port" {
    type = number
    description = "target group port number"
  
}

variable "alb_sg_ingress_rules" {
  type = list(object({
    type        = string
    protocol    = string
    from_port   = string
    to_port     = string
    cidr_blocks = list(string)
  }))
  default = []
}

variable "alb_sg_egress_rules" {
  type = list(object({
    type        = string
    protocol    = string
    from_port   = string
    to_port     = string
    cidr_blocks = list(string)
  }))
  default = []
}