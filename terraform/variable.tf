variable "region" {
  description = "AWS region"
  type        = string
}


variable "default_tags" {
  description = "A map of default tags to apply to resources"
  type        = map(string)
  default     = {}
}


variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "public_subnets" {
  description = "A list of CIDR blocks for public subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "A list of availability zones to use"
  type        = list(string)
}

variable "private_subnets" {
  description = "A list of CIDR blocks for private subnets"
  type        = list(string)
}

variable "environment" {
  description = "The environment the resources are created in (e.g., dev, prod)"
  type        = string
}