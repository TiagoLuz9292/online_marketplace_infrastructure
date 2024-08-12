variable "vpc_id" {
  description = "The ID of the VPC where the target group will be created"
  type        = string
}

variable "environment" {
  description = "The environment name (e.g., dev, staging, prod)"
  type        = string
}
