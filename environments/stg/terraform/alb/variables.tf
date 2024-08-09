variable "name_prefix" {
  description = "Prefix for resource names."
  type        = string
}

variable "certificate_arn" {
  description = "ARN of the SSL certificate."
  type        = string
  default     = ""
}

variable "s3_bucket_name" {
  description = "S3 bucket name for ALB access logs."
  type        = string
  default     = ""
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "alb_name" {
  description = "alb name"
  type        = string
}


variable "tags" {
  description = "Tags to apply to the resources."
  type        = map(string)
}
