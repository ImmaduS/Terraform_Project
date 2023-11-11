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

module "autoscaling" {
  source = "./modules/autoscaling"
}


module "rds" {
  source              = "./modules/rds"
  db_username         = "Postgres"
  db_password         = "Administrator"
  db_instance_class   = "db.t3.micro"
  az                  = "us-east-2a"
  db_engine_version   = "your_db_engine_version"  

  skip_final_snapshot = true  
  db_name             = "mydatabase"  
  db_allocated_storage = 20  
  parameter_group_name = "your_parameter_group"
}




module "route53" {
  source = "./modules/route53"
  }

  
module "s3" {
  source = "./modules/s3"
  }


module "vpc" {
  source          = "./modules/vpc"
  security_groups = ["sg-xxxxxx"]  
  subnet_cidr     = ["10.0.1.0/24"]  
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