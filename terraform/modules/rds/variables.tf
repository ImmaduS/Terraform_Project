variable "db_password"{
	description = "RDS root user password"
	type = string
	sensitive = true
}

variable "db_instance_class"{
	description = "Database instance class"
	type = string
	sensitive = false
}

variable "db_allocated_storage"{
	description = "Allocated storage"
	type = number
	sensitive = false
}

variable "parameter_group_name"{
	description = "parameter group"
	type = string
	sensitive = false
}
  
variable "db_engine_version"{
	description = ""
	type = string
	sensitive = false
}
variable "skip_final_snapshot"{
	description = " snapshot"
	type = boolean
	sensitive = false
}

variable "db_name"{
	description = "database name"
	type = string
	sensitive = false
}

variable "db_username"{
	description = "database username"
	type = string
	sensitive = false
}

variable "az"{
	description = "database availability zone"
	type = string
	sensitive = false
}

   