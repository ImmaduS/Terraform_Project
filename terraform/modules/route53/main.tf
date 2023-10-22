resource "aws_route53_zone" "immadude" {
  name = var.domain_name
}

resource "aws_acm_certificate" "my_certificate_request" {
  domain_name = var.domain_name
  subject_alternative_names = var.subject_alternative_names
  validation_method = "DNS"
  tags = {
    Name = var.domain_name
  }
}

resource "aws_route53_record" "validation" {
  name    = aws_acm_certificate.my_certificate_request.domain_validation_options.0.resource_record_name
  type    = aws_acm_certificate.my_certificate_request.domain_validation_options.0.resource_record_type
  zone_id = aws_route53_zone.immadude.zone_id
  records = [aws_acm_certificate.my_certificate_request.domain_validation_options.0.resource_record_value]
  ttl     = 60
}

resource "aws_acm_certificate_validation" "certificate_validation" {
  certificate_arn = aws_acm_certificate.my_certificate_request.arn
}
