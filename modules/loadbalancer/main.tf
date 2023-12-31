resource "aws_lb" "test" {
  name               = var.load_balancer_name
  internal           = false
  load_balancer_type = "network"
  subnets            = [for subnet in aws_subnet.public : subnet.id]

  enable_deletion_protection = true
}