# Script

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
  source = "/home/ec2-user/environment/project/terrafrom/modules/autoscaling"

  servers = 1
}


module "rds" {
  source = "/home/ec2-user/environment/project/terrafrom/modules/rds"
  servers = 1
}


module "route53" {
  source = "/home/ec2-user/environment/project/terrafrom/modules/route53"
  servers = 1
  }

  
module "s3" {
  source = "/home/ec2-user/environment/project/terrafrom/modules/s3"
  servers = 1
}


module "vpc" {
  source = "/home/ec2-user/environment/project/terrafrom/modules/vpc"
  servers = 1
  
}