terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region
}

# Get available AZs
data "aws_availability_zones" "available" {}

# Get current region
data "aws_region" "current" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 6.0"

  name = "${var.name}-${var.env}-vpc"
  cidr = var.vpc_cidr

  azs                  = slice(data.aws_availability_zones.available.names, 0, 3)
  public_subnets       = var.public_subnets
  enable_dns_hostnames = true
  enable_dns_support   = true
  create_igw           = true

  tags = merge(
    {
      Project   = var.name
      Env       = var.env
      ManagedBy = "Terraform"
      Owner      = "Ranjeet" 
      Region    = data.aws_region.current.name
    },
    var.tags
  )
}
