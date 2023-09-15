module "vpc" {
  source = "./modules/vpc"
  # Define module variables here
}

module "route53" {
  source = "./modules/route53"
  # Define module variables here
}

module "autoscaling" {
  source = "./modules/autoscaling"
  # Define module variables here
}

module "rds" {
  source = "./modules/rds"
  # Define module variables here
}

module "s3" {
  source = "./modules/s3"
  # Define module variables here
}

