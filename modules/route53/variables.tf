variable "domain_name" {
  description = "The main domain name for the ACM certificate"
  type        = string
  default     = "immadude.com"
}

variable "subject_alternative_names" {
  description = "List of subject alternative names for the ACM certificate"
  type        = list(string)
  default     = ["*.immadude.com"]
}
