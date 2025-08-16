variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "project" {
  description = "Project name (used in bucket names)"
  type        = string
  default     = "login-app"
}

variable "env" {
  description = "Environment (dev/stage/prod)"
  type        = string
  default     = "dev"
}
