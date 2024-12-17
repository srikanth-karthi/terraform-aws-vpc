terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

  }
}
provider "aws" {
  region = var.region

  default_tags {
    tags = merge(
      var.default_tags,
      {
        Owner       = var.default_tags["Owner"]
        Environment = var.environment
      }
    )
  }
}
