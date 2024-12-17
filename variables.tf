
variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC (e.g., 10.0.0.0/16)."
}

variable "vpc_name" {
  type        = string
  description = "The name tag for the VPC."
}

variable "public_subnets" {
  type        = list(string)
  description = "A list of CIDR blocks for the public subnets within the VPC."
}

variable "availability_zones" {
  type        = list(string)
  description = "A list of availability zones where the public subnets will be created."
}

variable "private_subnets" {
  description = "List of CIDR blocks for the private subnets"
  type        = list(string)
}
