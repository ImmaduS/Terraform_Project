variable "db_password"{
	description = "RDS root user password"
	type = string
	sensitive = true
}

variable "instance_class{
	descriptio = "Database instance class"
	type = string
	sensitive = false
}
