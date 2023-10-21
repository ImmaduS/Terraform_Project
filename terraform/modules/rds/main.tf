resource "aws_db_instance" "project" {
  identifier = "project"
  allocated_storage    = var.db_allocated_storage
  #parameter_group_name = var.db_parameter_group_name
  #engine               = var.db_engine
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  
  username             = var.db_username
  password             = var.db_password
  multi_az             = true
  skip_final_snapshot  = true
}
