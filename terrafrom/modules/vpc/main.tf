# TO define the VPC
resource "aws_vpc" "vpc" {
  
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  name = "VPC"
  protocol = "HTTP"
  port = 80
  vpc_id = module.vpc.vpc_id
  availaibility_zones = variable.az[count.index]
  subnets =["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}