# --- Security Group for Web/App servers ---
module "sg_web" {
  source = "./terraform-modules/security-group"
  name        = "${var.name}-${var.env}-web-sg"
  description = "Allow HTTP, HTTPS, SSH, and custom app port"
  vpc_id      = module.vpc.vpc_id  

  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow SSH"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow HTTP"
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow HTTPS"
    },
    {
      from_port   = 3020
      to_port     = 3020
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow custom app port 3020"
    }
  ]

  tags = {
    Project   = var.name
    Env       = var.env
    ManagedBy = "Terraform"
    Owner     = "Ranjeet"
  }
}

