# To display the outputs for the variable in question

output "vpc_id" {
 main
    decription  = "The VPC Identifier"
    value       = aws_vpc.exemple.id

}