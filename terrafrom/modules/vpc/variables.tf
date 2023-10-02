variable "subnet_cidr"{
	description = "Subnet CIDR Blocks"
	type = string
	sensitive = true

}
variable "vpc_cidr" {
	descripton = "The CIDR Blocks"
	sensitive = false
	
}

variable "security_groups" {
	descrition = "The security groups"
	sensitive = true
	
}

variable "availaibility_zones" {
	description = "az"
	sensitive = false
	default =["us-east-1a", "us-east-1b"]
}
