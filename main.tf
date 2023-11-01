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
  source = "./modules/autoscaling"
}


module "rds" {
  source = "./modules/rds"
  db_username = Postgres
  db_password = "Administrator"
  instance_class = "db.t3.micro"
  az = "us-east-2a"

}


module "route53" {
  source = "./modules/route53"
  }

  
module "s3" {
  source = "./modules/s3"
  }


module "vpc" {
  source = "./modules/vpc"
  security_groups = ""
  subnet_cidr     = ""
  vpc_cidr        = "10.0.0.0/16"
}

module "loadbalancer" {
  source = "./modules/loadbalancer"
  
}

module "ec2" {
  source = "./modules/ec2"
  ami_value = "ami-0c65adc9a5c1b5d7c"
  instance_type_value = "t2.micro"
  my_subnet_id_value = "subnet-07cfb090808aeadbb"
}