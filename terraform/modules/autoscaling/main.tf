resource "aws_autoscaling_group" "main" {
  name                 = "my-app-asg"
  launch_configuration = aws_launch_configuration.main.name
  min_size             = var.min_size
  max_size             = var.max_size
  desired_capacity     = var.desired_capacity
  vpc_zone_identifier  = aws_subnet.public.*.id
}

# Create a launch configuration and associate it with the ASG.
# Configure a load balancer for distributing traffic.

