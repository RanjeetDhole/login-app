# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# Public subnet IDs
output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.vpc.public_subnets
}

# Availability Zones
output "azs" {
  description = "AZs used for the subnets"
  value       = module.vpc.azs
}

# Internet Gateway ID
output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = module.vpc.igw_id
}

# Route table IDs
output "public_route_table_ids" {
  description = "Public route table IDs"
  value       = module.vpc.public_route_table_ids
}
