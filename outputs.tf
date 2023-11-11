# To expose some terraform contents like child modules, root modules, etc.

output "instance_public_ip" {
description = "Public IP address for the EC2 instance"
value = aws_instance.web_server.public_ip
}