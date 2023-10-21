# variables.tf

variable "autoscaling_variable" {
  description = "Autoscaling variable"
  type        = string
  default     = "default_value"
}


variable "min_size" {
  description = " minimum size"
  type        = string
  default     = "default_value"
}

variable "max_size" {
  description = " maximum size"
  type        = string
  default     = "default_value"
}

variable "desired_capacity" {
  description = " desired capacity"
  type        = string
  default     = "default_value"
}
