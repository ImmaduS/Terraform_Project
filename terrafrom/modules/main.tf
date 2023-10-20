
# This is the main terraform config file

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
 
}
module "autoscaling" {
  source = "../modules/autoscaling"

  servers = 1
}


module "rds" {
  source = "../modules/rds"
  servers = 1
}


module "route53" {
  source = "../modules/route53"
  servers = 1
  }

  
module "s3" {
  source = "../modules/s3"
  servers = 1
}


module "vpc" {
  source = "../modules/vpc"
  servers = 1
  
}
