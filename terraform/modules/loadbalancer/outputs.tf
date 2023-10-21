# To display the outputs for the variable in question

output "load_balancer_dns_name" {

    description  = "The load balancer dns name"
    value       = aws_load_balancer.dns.name
}