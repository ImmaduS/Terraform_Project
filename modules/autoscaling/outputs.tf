# Output variable for the Auto Scaling Group name
output "auto_scaling_group_name" {
  value = aws_autoscaling_group.name
}

# Output variable for the Launch Configuration name
output "launch_configuration_name" {
  value = aws_autoscaling_group.launch_configuration
}

# Output variable for the desired capacity
output "desired_capacity" {
  value = aws_autoscaling_group.desired_capacity
}
