variable "region" {
  description = "AWS region to deploy VPC"
  type        = string
  default     = "ap-south-1"
}

variable "name" {
  description = "VPC"
  type        = string
  default = "vpc-eks"
}

variable "env" {
  description = "dev"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnets CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "tags" {
  description = "Additional Tags"
  type        = map(string)
  default     = {}
}
