provider "aws" {
  region = "us-east-2"
}

variable "domain" {
  default = "immadude.com"
}

# create a Route 53 hostd zone ressource

resource "aws_route53_zone" "immadude" {
  name  = "immadude.com"
}


resource "aws_acm_certificate_validation" "certificate" {
  domain_name  = "immadude.com"
  subject_alternative_names  = ["*.{var.domain_name}"]
  validation_method = "DNS"
  tags ={
    Name : var.domain_name
  }
    lifecycle {
        create_before_destroy = true
    }

}

resource "aws_route53_record" "validation" {
    name = aws_acm_certificate.my_certificate_request.domain_validation_option.0.resource_record_name
    type = aws_acm_certificate.my_certificate_request.domain_validation_option.0.resource_record_type
    zone_id = aws_route53_zone.immadude
    records = [aws_acm_certificate.my_certificate_request.domain_validation_option.0.resource_record_value]
    ttl = 60
}
 
resource "aws_acm_certificate_validation" "certificate_validation" {
  certificate_arn = aws_acm_certificate.my_certificate_request.arn
}