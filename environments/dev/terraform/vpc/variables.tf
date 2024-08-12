variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.1.0.0/16"
}

variable "subnet_cidr_public1" {
  description = "The CIDR block for the first subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_cidr_public2" {
  description = "The CIDR block for the second subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "subnet_cidr_private1" {
  description = "The CIDR block for the first subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_cidr_private2" {
  description = "The CIDR block for the second subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone1" {
  description = "The availability zone for the first subnet"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone2" {
  description = "The availability zone for the second subnet"
  type        = string
  default     = "us-east-1b"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "main-vpc"
}

variable "subnet_public1_name" {
  description = "The name of the first subnet"
  type        = string
  default     = "public-subnet-1"
}

variable "subnet_public2_name" {
  description = "The name of the second subnet"
  type        = string
  default     = "public-subnet-2"
}

variable "subnet_private1_name" {
  description = "The name of the first subnet"
  type        = string
  default     = "public-subnet-1"
}

variable "subnet_private2_name" {
  description = "The name of the second subnet"
  type        = string
  default     = "public-subnet-2"
}

variable "igw_name" {
  description = "The name of the internet gateway"
  type        = string
  default     = "main-igw"
}

variable "public_route_table_name" {
  description = "The name of the route table"
  type        = string
  default     = "main-public-route-table"
}

variable "private_route_table_name" {
  description = "The name of the route table"
  type        = string
  default     = "main-private-route-table"
}

variable "environment_tags" {
  description = "Environment tags"
  type        = map(string)
  default     = {
    Environment = "dev"
  }
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-north-1"
}

variable "sub_account_id" {
  description = "AWS account ID for the sub account"
  type        = string
}
